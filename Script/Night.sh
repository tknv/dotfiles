#!/bin/sh
sed -i 's/solarized/eclipse/g' ${HOME}/.vimrc
sed -i 's/90/75/g' ${HOME}/.bashrc
sed -i 's/color/#color/g' ${HOME}/.muttrc
# xrdb -merge ${HOME}/.NightXresources
cd ${HOME}/.surf
# ln -sf Night_style.css style.css

if [ ! "$(pidof tabbed)" ]
then
	tabbed -d > /tmp/tabbed.xid &
fi
