#!/bin/bash
#This script relies on xrandr.
#xrandr outputs all connections, and grep filters if the HDMI is connected
#then we add a screen accordingly

#TODO: check if one or two screens are connected and use a different script for that
if xrandr | grep -e "HDMI.* connected"; then
	~/scripts/add_screens_left.sh
else
	~/scripts/remove_external_screens.sh
fi
