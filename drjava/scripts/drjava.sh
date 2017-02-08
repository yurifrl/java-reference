#!/bin/bash

docker stop drjava
docker rm drjava

docker run -d \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $(pwd):/usr/src/app \
  -e DISPLAY=unix$DISPLAY \
  --name drjava \
  yurifl/algs4-tools drjava
