#!/bin/sh
# This is for debugging, see log
# usually in /etc/network/interfaces 
# add wpa_supplicant file to wpa-conf section
sudo wpa_supplicant \
-iwlan0 -c/home/tknv/iNetIDs/using \
-Dwext -d
