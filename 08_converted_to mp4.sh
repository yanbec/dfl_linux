#!/bin/bash
DST_FILE=workspace/data_dst.mp4
MERGED_FILES=workspace/data_dst/merged/%5d.png
RST_FILE=workspace/result.mp4
FPS=`ffmpeg -i $DST_FILE 2>&1 | sed -n "s/.*, \(.*\) fp.*/\1/p"`
echo FPS: $FPS

ffmpeg -y -i $DST_FILE -r $FPS -i $MERGED_FILES  -map 0:a? -map 1:v -r $FPS -c:v libx264 -b:v 16M -pix_fmt yuv420p -c:a aac -b:a 192k -ar 48000 $RST_FILE

