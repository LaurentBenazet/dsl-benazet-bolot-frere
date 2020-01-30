package io.github.mosser.arduinoml.kernel.generator;

import io.github.mosser.arduinoml.kernel.App;
import io.github.mosser.arduinoml.kernel.behavioral.Action;
import io.github.mosser.arduinoml.kernel.behavioral.State;
import io.github.mosser.arduinoml.kernel.behavioral.Transition;
import io.github.mosser.arduinoml.kernel.structural.Actuator;
import io.github.mosser.arduinoml.kernel.structural.Brick;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

/**
 * Quick and dirty visitor to support the generation of Wiring code
 */
public class ToWiring extends Visitor<StringBuffer> {

    private final static String CURRENT_STATE = "current_state";
    private final static String FINAL_STATE = "final_state";

    public ToWiring() {
        this.result = new StringBuffer();
    }

    private void w(String s) {
        result.append(String.format("%s\n", s));
    }

    @Override
    public void visit(App app) {
        w("// Wiring code generated from an ArduinoML model");
        w(String.format("// Application name: %s\n", app.getName()));

        w("void setup(){");
        for (Brick brick : app.getBricks()) {
            brick.accept(this);
        }
        w("}\n");

        w("long time = 0;\n");

        for (State state : app.getStates()) {
            state.accept(this);
        }

        if (app.getInitial() != null) {
            w("void loop() {");
            w(String.format("  state_%s();", app.getInitial().getName()));
            w("}");
        }
    }

    @Override
    public void visit(Actuator actuator) {
        w(String.format("  pinMode(%d, OUTPUT); // %s [Actuator]", actuator.getPin(), actuator.getName()));
    }


    @Override
    public void visit(Sensor sensor) {
        w(String.format("  pinMode(%d, INPUT);  // %s [Sensor]", sensor.getPin(), sensor.getName()));
    }

    @Override
    public void visit(State state) {
        w(String.format("void state_%s() {", state.getName()));
        for (Action action : state.getActions()) {
            action.accept(this);
            if (state.getActions().size() > 1) {
                w("  delay(500);");
            }
        }

        w("  long debounce = " + state.getDebounce() + ";");
        w("  boolean guard = millis() - time > debounce;");
        w("  if(guard) {");
        w("    time = millis();");
        w("  }");
        context.put(CURRENT_STATE, state);

        for (Transition transition : state.getTransitions()) {
            transition.accept(this);
        }

        if (state.hasTransition()) {
            w(String.format("  state_%s();", ((State) context.get(CURRENT_STATE)).getName()));
        }

        w("}\n");
    }

    @Override
    public void visit(Transition transition) {
        w(String.format("  if( digitalRead(%d) == %s && guard ) {",
                transition.getSensor().getPin(), transition.getValue()));
        w("    time = millis();");
        w(String.format("    state_%s();", transition.getNext().getName()));
        w("  }");
    }

    @Override
    public void visit(Action action) {
        w(String.format("  digitalWrite(%d,%s);", action.getActuator().getPin(), action.getValue()));
    }

}
