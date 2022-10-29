# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/bin $HOME/Applications $fish_user_paths

set TERM "xterm-256color"                         # Sets the terminal type
set EDITOR "vim"
set VISUAL "vim"

### SET EITHER DEFAULT EMACS MODE OR VI MODE ###
function fish_user_key_bindings
  fish_vi_key_bindings
end
### END OF VI MODE ###

function up --argument index
    set out "../"
    if test $index -le 0
        set index 1 
    end
    if test ! $index -eq 0
        set index 1
    end
    for j in (seq 1 $index)
        set out "../$out"
    end
    
    if ! cd "$out"
        echo "Couldn't go up $index dirs."
    end
end

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'
