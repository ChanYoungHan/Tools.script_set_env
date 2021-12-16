#!/bin/bash
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <image> <name> <mode>" >&2

  echo "Now available mode : \n\t default"
  exit 1
fi

echo "docker with <mode> = $3"

if [ $3 = "default" ]; then
  docker run -itd -v /tmp/.X11-unix/:/tmp/.X11-unix -e DISPLAY=unix:1 --gpus all --mount type=bind,source=/media/hcy/0f492418-c958-478b-84b9-b50a1c6103f1/data,target=/data --name $2 $1

elif [ $3 = "no-display" ]; then
  docker run -itd -v /tmp/.X11-unix/:/tmp/.X11-unix -e DISPLAY=unix:1 --gpus all --mount type=bind,source=/media/hcy/0f492418-c958-478b-84b9-b50a1c6103f1/data,target=/data --name $2 $1

else
  echo "No option to run"
  echo "To run docker with all option, set <mode>=default"
  exit 1
fi

return 0


