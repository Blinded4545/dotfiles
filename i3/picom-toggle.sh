#!/bin/bash

if pgrep -x "picom" > /dev/null
then
	killall picom
else
	picom --blur-method dual_kawase --experimental-backends --backend glx --blur-strength 10
fi
