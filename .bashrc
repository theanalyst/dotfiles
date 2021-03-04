# Sample .bashrc for SuSE Linux

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true
export PATH=~/.local/bin:$PATH
export GOPATH=~/spells/go
export PATH=~/spells/go/bin:/home/abhishekl/.gem/ruby/2.1.0/bin:$PATH
# some lessons in history
export HISTSIZE=100000
export HISTFILESIZE=100000
export HISTCONTROL=erasedups
shopt -s histappend
D=$'\e[0;37m'
VIOLET=$'\e[0;35m'
GREEN=$'\e[0;32m'
ORANGE=$'\e[0;33m'
RED=$'\e[0;31m'
RESET=$(tput sgr0)
export PS1='[${RED}\u${RESET}@${RED}\h:${GREEN}\w${RESET}](⌚\t)${VIOLET}$(__git_ps1 "(⎇ %s)")${GREEN}\$ ${D}$RESET\n'
export EDITOR="emacsclient -t"
export TERM="xterm" # For emacs




pyserv() {
    if [[ -n $1 ]] ; then
        port="$1"
    else
        port="8000"
    fi

    old_dir="$(pwd)"

    if [[ -n $2 ]] ; then
        cd $2
    fi

    screen -dmS pyserv${port} python -m SimpleHTTPServer ${port}
    echo "http://localhost:${port}"
    echo "screen -r pyserv${port}"

    if ! [[ "$(pwd)" == $old_dir ]] ; then
        cd $old_dir
    fi
}

prfetch() {
    git fetch upstream pull/${1}/head:pr-${1}
}
# xport PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi

# export NPM_PACKAGES="/home/abhishekl/.npm-packages"
# export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
# export PATH="$NPM_PACKAGES/bin:$PATH"
# # Unset manpath so we can inherit from /etc/manpath via the `manpath`
# # command
# unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
# export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"
