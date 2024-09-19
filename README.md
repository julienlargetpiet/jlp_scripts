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

