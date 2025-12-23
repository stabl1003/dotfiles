#!/bin/bash

current_brightness=$(brightnessctl g)

max_brightness=$(brightnessctl m)

brightness_percentage=$(( 100 * current_brightness / max_brightness ))

echo "${brightness_percentage}% "
