#!/bin/bash

#maybe use the pdd utility in the future - in case we start calculating stuff
#or awk.

uptime="$(uptime | cut -d ' ' -f5 | cut -d ',' -f1)"
date="$(date -d now +'%d/%m/%Y')"

shutdown_time="$(date -d now +'%H:%M')"
boot_time="$(uptime -s | grep -oP '\d\d:\d\d')"

target_file=/var/log/uptime.tsv

echo "$date	$boot_time	$shutdown_time	$uptime" >> $target_file

