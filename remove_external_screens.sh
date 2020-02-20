#!/bin/bash
#turn off all external screens
xrandr --output DP2 --off
xrandr --output HDMI3 --off
xrandr --output LVDS1 --auto

i3-msg 'workspace 1, move workspace to output LVDS1'
i3-msg 'workspace 2, move workspace to output LVDS1'
