#!/bin/bash

docker run -it --rm \
  --name imagemagick-container \
  -v "$PWD":/home/host \
  -w /home/host \
  imagemagick-img \
  $*
