#!/bin/bash
FPS=5
DATA_SRC=workspace/data_src.mp4
WORKSPACE=workspace
DATA_SRC_DIR=workspace/data_src

mkdir -p $DATA_SRC_DIR

ffmpeg -i $DATA_SRC -r $FPS $DATA_SRC_DIR/%5d.png
