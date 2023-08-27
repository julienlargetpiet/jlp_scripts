#!/bin/bash

#put your current brightness in the file ~/bright.txt

a=$(cat ~/bright.txt)

if [ "$a" = "1.00" ]
then

        exit 0

else

        a=$(bc -l <<< $a+0.05)

        xrandr --output YOUR_SCREEN --brightness $a

        #xrandr --output YOUR_SECOND_SCREEN --brightness $a

        #...

        echo $a > ~/bright.txt

fi
