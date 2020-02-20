#!/bin/bash
#turn on all external screens and turn off the laptop screen

xrandr --output LVDS1 --off
xrandr --output HDMI3 --auto
xrandr --output DP2 --right-of HDMI3 --auto

i3-msg 'workspace 2, move workspace to output DP2'
#i3-msg 'workspace 3, move workspace to output DP2'

i3-msg 'workspace 1, move workspace to output HDMI3'
