package dslgroovy.dsl;

import groovy.lang.Binding;
import groovy.lang.Script;

public class DslGroovyBinding extends Binding {
    private Script script;

    public void setScript(Script script) {
        this.script = script;
    }
}
