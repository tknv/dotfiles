#!/bin/bash
# clear
echo -e "\033[2;38;5;44mcollect modules to level one path\033[30m"
cd $PWD
echo -e "\033[1;38;5;11mget in $PWD\033[30m"
mkdir modules
echo -ne "\033[1;38;5;148m\033[39m"
find . -path "./modules" -prune -o -type f -name "*.ko" -print0 -exec cp -p {} ./modules/ \; -exec echo -e " \033[1;38;5;148mmove to modules/\033[39m" \;
tput sgr0
