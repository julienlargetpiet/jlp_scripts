# jlp_scripts
Small shell scripts

## sxiv web

Allow to view images from the internet through sxiv.

### Requirements

- wget
- sxiv

### Usage 

- bash sxiv_web.sh -i url 

- bash sxiv_web.sh -i url -d 1 (if you want to download the image)

- bash sxiv_web.sh -i url -d 1 -o output_name (to name the image you download)

### Advices 

- Create an alias in your bash profile to run the command:
  
     alias new_command="bash ~/path to the script"


## Bright scripts

Adjust brightness 

- See documentation as comments directly in the scripts

## Dwm_bar.sh

Simple yet usefull status bar script

## durations.sh

Allow to get the duration of all media with given file extensions in a folder. 
It also returns the sum at the end of the output.

### Example

`bash duration.sh -i directory -e *.mp3`

## download.sh

Located in `download`

Is an automated tool that will download, acording to the programm provided, all the links in a given file.

### Example

`bash download.sh -i all_yt.txt -e yt-dlp`

Will download all the youtube videos that have their link in `all_yt.txt`

Or,

`bash download.sh -i all_git.txt -e "git clone"`

Will git clone all the repos in `all_git.txt`

## except_programm.py

Located in `rm_except`

Allow to remove certain files exept one or more acording to their type or not.

### Example

`python3 except_programm.py "$(pwd)/teste_dir/{*.txt,*.jpg}"`

Will remove nothing since all files in `teste_dir` are type `.txt` or `.jpg`

`python3 except_programm.py "$(pwd)/teste_dir/*.jpg"`

Will remove all files that are not type `.jpg`

`python3 except_programm.py "$(pwd)/teste_dir/{a.txt,b.jpg}"`

Will remove all files except `a.txt` and `b.jpg`

`python3 except_programm.py "$(pwd)/teste_dir/b.jpg"`

Will remove all files except `b.jpg`

