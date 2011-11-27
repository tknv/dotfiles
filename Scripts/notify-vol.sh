#!/bin/sh
if [ $# -eq 1 ]; then
	 amixer -q set Master $1
fi
notify-send -t 0 "`amixer get Master | awk 'NR==5 {print "vol " $4, $6}'`"
