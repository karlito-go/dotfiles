# Bash prompt - colorized, shows git status
# Ubuntu already loads /etc/bash_completion.d/git-prompt, we
# just need to turn it on.
__karl_bash_prompt()
{
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM=1

CLEAR="\[\033[0m\]"
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
WHITE="\[\033[0;37m\]"
export PS1=\
"${BLUE}[${CLEAR}"\
"${CYAN}\u${CLEAR}"\
"${CYAN}@${CLEAR}"\
"${CYAN}\h${CLEAR} "\
"${GREEN}\w${CLEAR}"\
"${BLUE}]${CLEAR}"\
"${RED}\$(__git_ps1 ' (%s)')${CLEAR}"\
"\n\$ "
}

case "$TERM" in
linux|xterm*|rxvt*|screen*|tmux*)
    __karl_bash_prompt
    # Also set the xterm title
    export PS1="\[\033]0;\u@\h \w\007\]${PS1}"
    ;;
*)
    ;;
esac
