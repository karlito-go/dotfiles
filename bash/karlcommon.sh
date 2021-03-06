export EDITOR=vim
export VIMINIT='so ~/.vimrc-karl'

# GIT
gvd() { git diff --patience "$@" ; }
gvds() { git diff --patience --staged "$@" ; }

reload() {
    echo "Reloading ~/.profile"
    . ~/.profile
}

alias ta='tmux a'
alias vi=vim
alias ls='ls --color=auto -I __pycache__'
alias tree='tree -I __pycache__'
alias grep='grep --color=auto --exclude-dir .git --exclude \*.pyc'
