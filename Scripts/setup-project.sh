#!/bin/sh
### tknv 2010.Sep.16th ###
# setup project directory,file and environment
clear
setterm -background red
echo "Setup project directory,file and environment path"
echo -n "Input project name and [ENTER]:"
read PROJECT
PRJROOT=`pwd`/$PROJECT
echo "make dir $PROJECT"
mkdir $PRJROOT
echo "make dir $PROJECT/bootldr"
mkdir $PRJROOT/bootldr
echo "make dir $PROJECT/build-tools"
mkdir $PRJROOT/build-tools
echo "make dir $PROJECT/debug"
mkdir $PRJROOT/debug
echo "make dir $PROJECT/doc"
mkdir $PRJROOT/doc
echo "make dir $PROJECT/images"
mkdir $PRJROOT/images
echo "make dir $PROJECT/kernel"
mkdir $PRJROOT/kernel
echo "make dir $PROJECT/project"
mkdir $PRJROOT/project
echo "make dir $PROJECT/rootfs"
mkdir $PRJROOT/rootfs
echo "make dir $PROJECT/sysapps"
mkdir $PRJROOT/sysapps
echo "make dir $PROJECT/tmp"
mkdir $PRJROOT/tmp
echo "make dir $PROJECT/tools"
mkdir $PRJROOT/tools
echo "make set environment path file:$PROJECT.sh and execute"
touch `pwd`/set-$PROJECT.sh
echo "export PROJECT=$PROJECT" >> `pwd`/set-$PROJECT.sh
echo "export PRJROOT=`pwd`/$PROJECT" >> `pwd`/set-$PROJECT.sh
echo "cd $PRJROOT" >> `pwd`/set-$PROJECT.sh
chmod u+x set-$PROJECT.sh
source ./set-$PROJECT.sh