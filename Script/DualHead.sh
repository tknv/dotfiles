#!/bin/sh
xrandr --output DP-1 --mode 1920x1080 --rate 60.0
# xrandr --output LVDS1 --mode 1280x800
# xrandr --output VGA1 --below LVDS1 --mode 1280x1024 --rate 76
# xrandr --output VGA1 --left-of LVDS1 --mode 1280x1024 --rate 76
# xrandr --output VGA1 --right-of LVDS1 --mode 1280x1024 --rate 76
# xrandr --output VGA1 --right-of LVDS1 --mode 1366x768 --rate 59.79
xrandr --output DVI-I-1 --left-of DP-1 --mode 1280x1024 --rate 60.0


# Display port plug off/on then no initialize
# xset dpms force off
# xset dpms force on
