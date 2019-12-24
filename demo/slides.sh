#!/bin/sh

PATH="$(pwd)/src:$PATH"
SD_LANG='term'

clear
format 'Slides with shelldown' | header
format 'press enter to continue...' | paragraph

read -s; clear
format 'Slides with shelldown' | header
format \
'Because Shelldown is just a shell script we can do ' \
'anything a shell script can:' | paragraph

read -s; format '* We can ' -i 'wait' ' for input.' | paragraph
read -s; format '* We can ' -b 'clear' ' the terminal.' | paragraph

read -s; clear
format 'Slides with shelldown' | header
format 'Hurray for shelldown' | paragraph

read -s; clear
