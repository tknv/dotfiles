#!/bin/bash
###        2010.May.11 by tknv              ###
# format and make pertition for overo SD card #
# target device is sdf                        #
clear
setterm -background red
echo "Should Run as root and Dangerous"
echo "Start format, I.O DATA:USB2-W31RW microSD is /dev/sdf"
echo -n "Please input microSD device name(ex.sdf) and press [ENTER]:"
read microSDdev

fdisk /dev/$microSDdev < inputs.sh

echo -n "Press [ENTER] start format partition:1"
read Wait 
mkfs.vfat -F 32 /dev/"$microSDdev"1 -n FAT

echo -n "Press [ENTER] start format partition:2"
read Wait 
mkfs.ext3 /dev/"$microSDdev"2

setterm -background black 
