#!/bin/sh

# This script takes a single JPEG file as argument and optimizes it, overwriting
# the input image.

if [ $# -ne 1 ]
then
  echo "Expected exactly one argument."
  exit
fi

CANONICAL=$(readlink -e "$1")
TMPFILE=$(mktemp)
DIR=$(dirname "$CANONICAL")
BASE=$(basename "$CANONICAL")

docker run --rm -v "$DIR":/images datawraith/mozjpeg -copy none -arithmetic "$BASE" > $TMPFILE \
  && mv -f "$TMPFILE" "$1"
