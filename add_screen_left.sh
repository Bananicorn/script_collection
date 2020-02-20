#!/bin/bash
#turn on the laptop screen and the first external one

xrandr --output LVDS1 --auto
xrandr --output HDMI3 --off
xrandr --output DP2 --left-of LVDS1 --auto

i3-msg 'workspace 1, move workspace to output DP2'

i3-msg 'workspace 2, move workspace to output LVDS1'
i3-msg 'workspace 3, move workspace to output LVDS1'
