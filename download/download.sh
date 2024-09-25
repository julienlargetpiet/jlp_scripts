#!/bin/sh

inpt_file="NULL"
tool="NULL"

while getopts ":i:e:" options; do         
  case "${options}" in                     
    i)                                    
      inpt_file=${OPTARG}
      find $inpt_file &> /dev/null 
      if [ "$?" -eq 1 ]
      then 
        echo "file does not exist"
        exit 1
      fi
      ;;

    e)
      tool=${OPTARG} 
      ;;

  esac
done

if [[ $inpt_file = "NULL" || $tool = "NULL" ]]
then 
        echo "all args must be filled, -e for the downloading tool used and -i for the input files containing the links"
        exit 1
fi

untl=$(cat $inpt_file | wc -l)
echo "${untl} videos found"
echo "starting downloading..."
#for i in $(seq 1 $untl);do echo $(awk "NR==${i}" all_yt.txt);done
for i in $(cat $inpt_file);do $tool $i;done
