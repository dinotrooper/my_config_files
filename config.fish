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

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'


# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias amcommit='git commit -am'
alias gstat='git status'
alias gdiff='git diff'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'


#alias for docker ps with formatting to remove command, ports, status columns
alias dockerps='docker ps -a --format "table {{.Names}}\t{{.ID}}\t{{.Image}}\t{{.CreatedAt}}\t{{.Status}}"'
alias ssh_legacy='ssh -o KexAlgorithms=+diffie-hellman-group1-sha1 -c 3des-cbc'
alias sshwoh='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

#aliases for windows desktop, documents, downloads
alias cd_docs='cd /mnt/c/Users/dinot/Documents'
alias cd_dt='cd /mnt/c/Users/dinot/Desktop'
alias cd_dls='cd /mnt/c/Users/dinot/Downloads'
