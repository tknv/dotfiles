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
