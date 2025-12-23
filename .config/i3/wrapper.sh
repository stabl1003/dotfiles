#!/bin/bash

i3status | while read -r line; do
    brightness="$("$HOME/.config/i3/brightness.sh")"
    layout=$(setxkbmap -query | awk '/layout/{print $2}')
     echo "$brightness | $layout | $line" || exit 1
 done
