#!/bin/sh
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <image> <name>" >&2
  exit 1
fi

docker run -itd -v /tmp/.X11-unix/:/tmp/.X11-unix -e DISPLAY=unix:1 --gpus all --mount type=bind,source=/media/hcy/0f492418-c958-478b-84b9-b50a1c6103f1/data,target=/data --name $2 $1

