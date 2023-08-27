#!/bin/bash

a=$(cat ~/bright.txt)

if [ "$a" = ".05" ]
then

        exit 0

else

        a=$(bc -l <<< $a-0.05)

        xrandr --output DP-0 --brightness $a

        xrandr --output HDMI-0 --brightness $a

        echo $a > ~/bright.txt

fi















