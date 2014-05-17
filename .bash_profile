if [ -f ~/.bashrc ]; then
         . ~/.bashrc
fi

D=$'\e[0;37m'
VIOLET=$'\e[0;35m'
GREEN=$'\e[0;32m'
ORANGE=$'\e[0;33m'
RED=$'\e[0;31m'

export PS1='[${RED}\u${D}@${RED}\h:${GREEN}\w${D}]${VIOLET}$(__git_ps1 "(⎇ %s)")${GREEN}\$ ${D}'
