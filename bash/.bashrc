# Fixes problems when splitting a terminal
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

# Enable bash completion
if [ -f /usr/share/bash-completion/bash_completion ] && ! shopt -oq posix; then
    source /usr/share/bash-completion/bash_completion
fi

# Enable git prompt support
if [ -f /usr/share/git/git-prompt.sh ]; then
    source /usr/share/git/git-prompt.sh
fi

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1

ps1_exit_code () {
    local exit=$?
    if [[ $exit -ne 0 ]]; then
        echo -e "\e[41m $exit \e[0m "
    fi
    return $exit
}

ps1_hostname () {
    local exit=$?
    if [[ -n "$SSH_CLIENT" ]]; then
        local host=$(hostname)
        echo -e "\e[33m@\e[93m$host\e[0m"
    fi
    return $exit
}

# Disable the built-in display of the current virtual env
VIRTUAL_ENV_DISABLE_PROMPT=1

ps1_virtual_env () {
    local exit=$?
    if [[ -n "$VIRTUAL_ENV" ]]; then
        local envname=$(basename "$VIRTUAL_ENV")
        echo -e " \e[33m$envname\e[0m "
    fi
    return $exit
}

PS1='$(ps1_exit_code)\u$(ps1_hostname)  \e[96m\w\e[0m $(ps1_virtual_env)$(__git_ps1 " \e[94m%s\e[0m ")\n\$ '

export VISUAL=vim
export EDITOR=$VISUAL

export MAKEFLAGS=-j8

# No duplicates and lines with leading space in history
HISTCONTROL=ignoreboth
# Append to the history file, don't overwrite
shopt -s histappend
# Control history size
HISTSIZE=100
HISTFILESIZE=2000

# Check window size after each command
shopt -s checkwinsize

if [ -f "$HOME/.bash_aliases" ]; then
    source $HOME/.bash_aliases
fi
