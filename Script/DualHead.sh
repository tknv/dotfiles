#!/bin/sh
xrandr --output eDP1 --mode 1600x900 --rate 60.00
# xrandr --output VGA1 --below LVDS1 --mode 1280x1024 --rate 76
# xrandr --output VGA1 --left-of LVDS1 --mode 1280x1024 --rate 76
# xrandr --output VGA1 --right-of LVDS1 --mode 1366x768 --rate 59.79
xrandr --output DP2 --right-of eDP1 --mode 1920x1080 --rate 60.00
# main display first

# Display port plug off/on then no initialize
# xset dpms force off
# xset dpms force on
