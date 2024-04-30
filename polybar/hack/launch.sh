#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/hack"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#LAUNCH
#MONITOR = eDP-1

# Launch the barscreens=$(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f6)

polybar -q top -c "$DIR"/config.ini &
polybar -q top -c "$DIR"/config2.ini &

