#!/bin/sh
xrandr --output LVDS1 --primary --mode 1024x768
xrandr --output VGA1 --above LVDS1 --mode 1280x1024 --noprimary

