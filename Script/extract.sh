#!/bin/sh
# mkdir all, then into all and exec this script
mkdir all
cd all
ls -1 ../ >> list
while read f
do
  if [ "$f" != "all" ]
	then
	mkdir files-$f
	cd files-$f
	tar -xzvf ../../$f
    cd ../
  fi
done < list
