package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.NamedElement;
import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;

import java.util.ArrayList;
import java.util.List;

public class State implements NamedElement, Visitable {

    private double debounce = 200;
    private String name;
    private List<Action> actions = new ArrayList<>();
    private List<Transition> transitions = new ArrayList<>();

    @Override
    public String getName() {
        return name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    public long getDebounce() {
        return Math.round(debounce);
    }

    public void setDebounce(double debounce) {
        this.debounce = debounce;
    }

    public void setFrequency(double frequency) {
        this.debounce = 1 / frequency * 1000;
    }

    public List<Action> getActions() {
        return actions;
    }

    public void setActions(List<Action> actions) {
        this.actions = actions;
    }

    public List<Transition> getTransitions() {
        return transitions;
    }

    public boolean hasTransition() {
        return !transitions.isEmpty();
    }

    public void addTransition(Transition transition) {
        this.transitions.add(transition);
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
