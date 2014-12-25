[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[[ -f ~/.xprofile ]] && source ~/.xprofile
# eval $(cat "/home/abhi/.fehbg")
exec awesome
