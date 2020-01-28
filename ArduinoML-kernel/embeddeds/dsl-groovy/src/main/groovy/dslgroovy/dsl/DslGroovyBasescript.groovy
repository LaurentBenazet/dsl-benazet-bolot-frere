package dslgroovy.dsl

import io.github.mosser.arduinoml.kernel.behavioral.Action
import io.github.mosser.arduinoml.kernel.behavioral.State
import io.github.mosser.arduinoml.kernel.structural.Actuator
import io.github.mosser.arduinoml.kernel.structural.SIGNAL
import io.github.mosser.arduinoml.kernel.structural.Sensor

abstract class DslGroovyBasescript extends Script {
    // sensor "name" pin n
    def sensor(String name) {
        [pin  : { n -> ((DslGroovyBinding) this.getBinding()).getModel().createSensor(name, n) },
         onPin: { n -> ((DslGroovyBinding) this.getBinding()).getModel().createSensor(name, n) }]
    }

    // actuator "name" pin n
    def actuator(String name) {
        [pin: { n -> ((DslGroovyBinding) this.getBinding()).getModel().createActuator(name, n) }]
    }

    // state "name" means actuator becomes signal [and actuator becomes signal]*n
    def state(String name) {
        List<Action> actions = new ArrayList<Action>()
        ((DslGroovyBinding) this.getBinding()).getModel().createState(name, actions)
        // recursive closure to allow multiple and statements
        def closure
        closure = { actuator ->
            [becomes: { signal ->
                Action action = new Action()
                action.setActuator(actuator instanceof String ? (Actuator) ((DslGroovyBinding) this.getBinding()).getVariable(actuator) : (Actuator) actuator)
                action.setValue(signal instanceof String ? (SIGNAL) ((DslGroovyBinding) this.getBinding()).getVariable(signal) : (SIGNAL) signal)
                actions.add(action)
                [and: closure]
            }]
        }
        [means: closure]
    }

    // initial state
    def initial(state) {
        ((DslGroovyBinding) this.getBinding()).getModel().setInitialState(state instanceof String ? (State) ((DslGroovyBinding) this.getBinding()).getVariable(state) : (State) state)
    }

    // from state1 to state2 when sensor becomes signal
    def from(state1) {
        [to: { state2 ->
            [when: { sensor ->
                [becomes: { signal ->
                    ((DslGroovyBinding) this.getBinding()).getModel().createTransition(
                            state1 instanceof String ? (State) ((DslGroovyBinding) this.getBinding()).getVariable(state1) : (State) state1,
                            state2 instanceof String ? (State) ((DslGroovyBinding) this.getBinding()).getVariable(state2) : (State) state2,
                            sensor instanceof String ? (Sensor) ((DslGroovyBinding) this.getBinding()).getVariable(sensor) : (Sensor) sensor,
                            signal instanceof String ? (SIGNAL) ((DslGroovyBinding) this.getBinding()).getVariable(signal) : (SIGNAL) signal)

                    [frequency: { freq ->
                        State originState = (State) ((DslGroovyBinding) this.getBinding()).getVariable((String) state1)
                        originState.setFrequency((double) freq)
                    }]
                }]
            }]
        }]
    }

    def frequency(double delay) {
        ((DslGroovyBinding) this.getBinding()).getModel().setFrequency(delay);
    }

    // export name
    def export(String name) {
        println(((DslGroovyBinding) this.getBinding()).getModel().generateCode(name).toString())
    }

    // disable run method while running
    int count = 0

    abstract void scriptBody()

    def run() {
        if (count == 0) {
            count++
            scriptBody()
        } else {
            println "Run method is disabled"
        }
    }
}
