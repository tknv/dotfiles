#!/bin/sh
echo "Convert raw rgb565 to png script"
echo "Please input <here val> and [ENTER] key"
echo "Start..."
echo "Type raw file graphic size(captured monitor size) <WIDTHxHIGHT> [ENTER]:"
read size
echo "Type raw file name <raw file name> [ENTER]:"
read rawfile
echo "Type export file name <desire name>.png [ENTER]:"
read exfile
ffmpeg -vcodec rawvideo -f rawvideo -pix_fmt rgb565 -s $size -i $rawfile -f image2 -vcodec png $exfile.png
