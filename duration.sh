extensions=*

while getopts ":i:e:" options; do         
  case "${options}" in                     
    i)                                    
      name=${OPTARG}
      find $name &> /dev/null 
      if [ "$?" -eq 1 ]
      then 
        echo "file does not exist"
        exit 1
      fi
      ;;

    e)
      extensions=${OPTARG} 
      ;;

  esac
done

tot=0
for i in $(ls ${name}/${extensions})
do
        cur_val=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 ${i})
    echo $cur_val
    tot=$(python -c "print($tot + $cur_val)")
done

echo "total: $tot"

