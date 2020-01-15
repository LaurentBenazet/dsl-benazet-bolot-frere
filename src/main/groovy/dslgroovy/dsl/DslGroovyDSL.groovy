package dslgroovy.dsl

class DslGroovyDSL {
    private GroovyShell shell
    private DslGroovyBinding binding

    void eval(File scriptFile) {
        Script script = shell.parse(scriptFile)

        binding.setScript(script)
        script.setBinding(binding)

        script.run()
    }
}
