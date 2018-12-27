#!/bin/sh
# This script disables the touchpad without disabling buttons by setting Hysteresis
# to an impossible value.

############
# Warning! #
############
# If you have a touchpad with no "Physical" buttons but have to tap the corners 
# of your touchpad to simulate physical buttons, put a "#" sign in front of the next
# 4 lines!

synclient LTCornerButton=1
#synclient LBCornerButton=0
synclient RTCornerButton=3
#synclient RBCornerButton=0


# Set PalmDetect on: Needed if the before lines are commented away,
# Doesn't do any harm if they're not
synclient PalmDetect=1

synclient HorizHysteresis=10000 
synclient VertHysteresis=10000

# Disable all other touchpad features
synclient VertEdgeScroll=0
synclient HorizEdgeScroll=0
synclient CornerCoasting=0
synclient VertTwoFingerScroll=0
synclient HorizTwoFingerScroll=0
synclient TouchpadOff=2
synclient LockedDrags=0
synclient TapButton1=0
synclient TapButton2=0
synclient TapButton3=0
synclient CircularPad=0

