#!/bin/sh

#xsetroot -name "$(echo $(echo "CPU: "$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%")) | $(echo TEMP: $(numfmt --from-unit=K --to-unit=M --format "%8.0f" $(cat /sys/class/thermal/thermal_zone0/temp))°C) | $(echo RAM: $(echo $(numfmt --from-unit=K --to-unit=G --format "%8.1f" $(free | awk '/^Mem:/ {print $3}'))Gi)"/"$(echo $(numfmt --to-unit=M --format "%8.1f" $(free | awk '/^Mem:/ {print $2}'))Gi)) | TODAY: $(echo $(date) | cut -d " " -f 1-5) "

while :
do

        a=$(numfmt --from-unit=K --to-unit=G --format "%8.1f" $(free | awk '/^Mem:/ {print $3}'))

        b=$(numfmt --to-unit=M --format "%8.1f" $(free | awk '/^Mem:/ {print $2}')) 

        a=$(echo "$a" | sed s/,/./g)

        b=$(echo "$b" | sed s/,/./g)

        x=$(bc -l <<< $a/$b)

        x=$(bc -l <<< $x/0.01)

        ram=${x:0:4}

        tme=$(date | cut -d " " -f 4-5 | awk '{print $2}' | cut -d ":" -f 1-2)

        temp=$(echo TEMP: $(numfmt --from-unit=K --to-unit=M --format "%8.0f" $(cat /sys/class/thermal/thermal_zone0/temp))°C) 
       
        cpu=$(echo "CPU: "$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%") 

        xsetroot -name "$temp | $cpu | $(echo RAM: "${ram}%") | TIME: $tme "
        
        sleep 0.1

done

