#! /bin/bash
#
# Converts an Audio file to a MP3 and adds an ID3 tag.
#
# Usage: audio2mp3 infile [outfile]
#
IFS=";" title_author=(`mplayer -vc null -vo null -ao pcm:fast -ao pcm "$1" -ao pcm:file="$1.wav" 2>&1 | awk -F: 'BEGIN { ORS = ";" } ; $1 ~ /name|author/ { print $2 }'`)
author=${title_author[0]}
title=${title_author[1]}
echo "Author: $author"
echo "Title: $title"
lame "$1".wav "$2" --tt "$title" --ta "$author"
rm "$1".wav
