#!/bin/bash
# clear
echo -e "\033[2;38;5;44mChange file encoding UTF-8 to CP932\033[30m"
cd $PWD
echo -e "\033[1;38;5;11mget in $PWD\033[30m"
mkdir -p CP932ed
echo -ne "\033[1;38;5;148m\033[39m"
find . -path "./CP932ed" -prune -o -type f -name "*.tex" -print0 -exec cp -p {} ./CP932ed/ \; -exec echo -e " \033[1;38;5;148mMoved\033[39m" \;
cd $PWD/CP932ed
for file in $(find . -type f -name "*.tex")
do
	iconv -f utf-8 -t CP932 $file > "$file"_CP932ed
	echo -e " \033[1;38;5;148m$file was CP932ed\033[39m"
done
for file in $(find . -type f -name "*.tex")
do
	mv "$file"_CP932ed $file
done
tput sgr0
