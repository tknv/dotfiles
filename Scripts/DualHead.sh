#!/bin/sh
xrandr --output LVDS1 --mode 1280x800
# xrandr --output VGA1 --below LVDS1 --mode 1280x1024 --rate 76
# xrandr --output VGA1 --left-of LVDS1 --mode 1280x1024 --rate 76
# xrandr --output VGA1 --right-of LVDS1 --mode 1280x1024 --rate 76
xrandr --output VGA1 --right-of LVDS1 --mode 1366x768 --rate 59.79
