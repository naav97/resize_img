#!/bin/sh

if [ "$#" -lt 3 ]; then
  echo "Usage: $0 <width> <height> <list of images>"
  exit 1
fi

width=$1
height=$2

shift 2

for img in "$@"; do
  filename="${img%.*}"
  convert "$img" -resize "${width}x${height}" "${filename}-mini.webp"
done
