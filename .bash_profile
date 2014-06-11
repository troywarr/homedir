#!/bin/bash


# expand PATH

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH


# add NPM-installed bins to PATH

export PATH=/usr/local/share/npm/bin:$PATH


# configure prompt (see http://neverstopbuilding.net/gitpro/)

# MAGENTA="\[\033[0;35m\]"
# YELLOW="\[\033[0;33m\]"
# BLUE="\[\033[34m\]"
# LIGHT_GRAY="\[\033[0;37m\]"
# CYAN="\[\033[0;36m\]"
# GREEN="\[\033[0;32m\]"
# RESET="\[\e[m\]"
# GIT_PS1_SHOWDIRTYSTATE=true
#
# export PS1=$GREEN"★ \u@\h"'$(
#     if [[ $(__git_ps1) =~ \*\)$ ]]
#     then echo "'$YELLOW'"$(__git_ps1 " (%s)")
#     elif [[ $(__git_ps1) =~ \+\)$ ]]
#     then echo "'$MAGENTA'"$(__git_ps1 " (%s)")
#     else echo "'$CYAN'"$(__git_ps1 " (%s)")
#     fi)'$BLUE" \w"$RESET": "


# more colors

# export CLICOLOR=1
# export GREP_OPTIONS='--color=auto'


# don't check mail when opening terminal (see http://unix.stackexchange.com/a/2461)

unset MAILCHECK


# aliases

alias be="bundle exec"
alias gst="git status"
alias ga="git add ."
alias gc="git commit . -vm"
alias gca="git commit -am"
alias gpush="git push"
alias gpull="git pull"


# run OS specific profile

FILENAME=~/.bash_profile-$(uname)
[ -f $FILENAME ] && source $FILENAME


# execute local .bash_profile if available

[ -e "$HOME/.bash_profile.local" ] && source "$HOME/.bash_profile.local"


# rbenv installation step

eval "$(rbenv init -)"
