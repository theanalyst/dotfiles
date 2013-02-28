[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.xprofile ]] && source ~/.xprofile
eval $(cat "/home/abhi/.fehbg")
exec dwm
