#!/bin/bash

FILES="$@"
filename="${FILES%%.*}"
output="$filename.mp4"

ffmpeg -i $FILES  -strict -2 $output
