#!/bin/bash
# This script was mostly just copied verbatim from the openscad website
# The purpose of it is to open the openscad viewer and vim side by side
# Best used with a tiling window manager like i3

FILE="$1"

# increase stack size to allow deeper recursion
ulimit -s 65536

if [ "$FILE" == "" ]
then
  TEMPF=`tempfile -s .scad`
  openscad "$TEMPF" >/dev/null 2>/dev/null &
  vim "$TEMPF"
  rm -f "$TEMPF"
  exit
fi

if [ ! -e "$FILE" ]
then
  echo -e "$LICENSE" >> "$FILE"
fi

openscad "$FILE" >/dev/null 2>/dev/null &
vim "$FILE"
