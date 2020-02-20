#!/bin/bash
# The purpose of it is to open the a povray render and vim side by side
# Best used with a tiling window manager like i3

# Currently it relies on the png already existing

FILE=$1
IMAGEFILE=${FILE/pov/png}

#listens for sigint, sigterm or exit signals, then kills the
#background-process (in this case feh)
trap 'kill %1;trap - SIGINT SIGTERM EXIT' SIGINT SIGTERM EXIT

#opens feh to display the image and sets it to reload on change
feh --auto-reload $IMAGEFILE &

#finally, open the file for editing with that beautiful editor
vim $FILE
