#!/usr/bin/env zsh

grep -rn \
  --exclude-dir=.git \
  --exclude-dir=node_modules \
  --exclude-dir=docs \
  --exclude-dir=lib \
  --exclude-dir=public \
  --exclude-dir=bootstrap \
  --exclude-dir=vendor \
  --exclude=\*.{jpg,png,jpeg} \
  $1 .
