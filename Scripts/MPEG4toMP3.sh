#!/bin/sh
ffmpeg -i $1 -f mp3 -ab 192000 -vn $1.mp3
