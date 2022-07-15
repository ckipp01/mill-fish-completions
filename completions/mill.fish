##################################################
# completions for the mill build tool            #
##################################################

#complete --command mill --no-files
complete --command mill --long no-default-predef --description "Disable the default predef and run Ammonite with the minimal predef possible"
complete --command mill --short s --long silent --description "Make ivy logs go silent instead of printing though failures will still throw exception"
complete --command mill --short w --long watch --description "Watch and re-run your scripts when they change"
complete --command mill --long bsp --description "Run a BSP server against the passed scripts"
complete --command mill --short c --long code --require-parameter --description "Pass in code to be run immediately in the REPL"
complete --command mill --short h --long home --description "The home directory of the REPL; where it looks for config and caches"
complete --command mill --short p --long predef --description "Lets you load your predef from a custom location, rather than the 'default' location in your Ammonite home"
# NOTE that -a "true false" won't work here because it will be --color=true which we don't want
complete --command mill --long color --description "Enable or disable colored output; by default colors are enabled in both REPL and scripts if the console is interactive, and disabled otherwise"
complete --command mill --long thin  --description "Hide parts of the core of Ammonite and some of its dependencies. By default, the core of Ammonite and all of its dependencies can be seen by users from the Ammonite session. This option mitigates that via class loader isolation."
complete --command mill --long help --description "Print the help message"
complete --command mill --short v --long version --description "Show mill version and exit"
complete --command mill --long repl --description "Run Mill in interactive mode and start a build REPL. In this mode, no mill server will be used. Must be the first argument."
complete --command mill --long no-server --description "Run Mill in interactive mode, suitable for opening REPLs and taking user input. In this mode, no mill server will be used. Must be the first argument."
complete --command mill --short i --long interactive --description "Run Mill in interactive mode, suitable for opening REPLs and taking user input. In this mode, no mill server will be used. Must be the first argument."
complete --command mill --short b --long bell --description "Ring the bell once if the run completes successfully, twice if it fails."
complete --command mill --long disable-ticker --description "Disable ticker log (e.g. short-lived prints of stages and progress bars)"
complete --command mill --short d --long debug --description "Show debug output on STDOUT"
complete --command mill --short k --long keep-going --description "Continue build, even after build failures"
# Should be in <k=v> format. Figure out a way to help with this
complete --command mill --short D --long define --description "Define (or overwrite) a system property"
# Only can take an it, maybe there is a way to limit that
complete --command mill --short j --long jobs --description "Allow processing N targets in parallel. Use 1 to disable parallel and 0 to use as much threads as available processors."
complete --command mill --long import --description "Additional ivy dependencies to load into mill, e.g. plugins."
complete --command mill --long rest --description "The name of the targets you want to build, followed by any parameters you wish to pass to those targets."

function _everything
  mill resolve __ 2> /dev/null
end

# This is crazy minimal but it's surprising how well this works
complete --command mill -a '(_everything)'
