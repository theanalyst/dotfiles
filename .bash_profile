if [ -f ~/.bashrc ]; then
         . ~/.bashrc
fi

D=$'\e[0;37m'
PINK=$'\e[0;35m'
GREEN=$'\e[0;32m'
ORANGE=$'\e[0;33m'

export PS1='${PINK}\u${D}@${ORANGE}\h ${GREEN}[\w]$ ${D}'
