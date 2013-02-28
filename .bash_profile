
if [ -f ~/.bashrc ]; then
         . ~/.bashrc
fi

export PATH=$PATH:$HOME/bin:$HOME/.gem/ruby/1.9.1/bin:/usr/local/heroku/bin
export BASH_ENV=$HOME/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
