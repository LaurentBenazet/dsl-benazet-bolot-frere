package io.github.mosser.arduinoml.kernel.behavioral;

import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.SIGNAL;
import io.github.mosser.arduinoml.kernel.structural.Sensor;

import java.util.ArrayList;
import java.util.List;

public class Transition implements Visitable {

    private State next;
    private List<Condition> conditions = new ArrayList<>();

    public State getNext() {
        return next;
    }

    public void setNext(State next) {
        this.next = next;
    }

    public void addCondition(Condition condition) {
        this.conditions.add(condition);
    }

    public void addAllCondition(List<Condition> conditions){
        this.conditions.addAll(conditions);
    }

    public void addCondition(Sensor sensor, SIGNAL value) {
        this.conditions.add(new Condition(sensor, value));
    }

    public List<Condition> getConditions() {
        return conditions;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    @Override
    public String toString() {
        return "Transition{" +
                "next=" + next +
                ", conditions=" + conditions.toString() +
                '}';
    }
}
