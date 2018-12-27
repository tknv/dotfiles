#!/bin/bash
xset +fp /usr/share/fonts
xset fp rehash
xset -b -c
wmname LG3D # for running java gui app; eclipse and umlet
# xbindkeys -f /home/tknv/.xbindkeysrc
if [ -s $HOME/.Xmodmap ]; then
    xmodmap $HOME/.Xmodmap
fi
exec $HOME/dwmrc
# spectrwm 
# export XMODIFIERS="@im=ibus"
# export GTK_IM_MODULE="ibus" # or xim
# export GT_IM_MODULE="ibus" # or xim
# export QT_IM_MODULE="ibus" # or xim
# eval "$(dbus-launch --sh-syntax --exit-with-session)"
# xscreensaver &
