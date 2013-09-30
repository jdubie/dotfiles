#!/usr/bin/env sh

cd ~/Music/youtube
youtube-dl \
  --title \
  --extract-audio \
  --audio-format  aac \
  $1
