#!/bin/bash

a=$(cat ~/bright.txt)

if [ "$a" = "1.00" ]
then

        exit 0

else

        a=$(bc -l <<< $a+0.05)

        xrandr --output HDMI-0 --brightness $a

        xrandr --output DP-0 --brightness $a

        echo $a > ~/bright.txt

fi
