#!/bin/sh
# sed -i 's/eclipse/solarized/g' ${HOME}/.vimrc
# sed -i 's/75/90/g' ${HOME}/.bashrc
# sed -i 's/#color/color/g' ${HOME}/.muttrc
# xrdb -merge ${HOME}/.DayXresources
cd ${HOME}/.surf
# ln -sf Day_style.css style.css

if [ ! "$(pidof tabbed)" ]
then
	tabbed -d > /tmp/tabbed.xid &
fi
