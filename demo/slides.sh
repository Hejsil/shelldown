#!/bin/sh

SD_LANG='term'

clear
src/format 'Slides with shelldown' | src/header
src/format 'press enter to continue...' | src/paragraph

read -s; clear
src/format 'Slides with shelldown' | src/header
src/format \
'Because Shelldown is just a shell script we can do ' \
'anything a shell script can:' | src/paragraph

read -s; src/format '* We can ' -i 'wait' ' for input.' | src/paragraph
read -s; src/format '* We can ' -b 'clear' ' the terminal.' | src/paragraph

read -s; clear
src/format 'Slides with shelldown' | src/header
src/format 'Hurray for shelldown' | src/paragraph

read -s; clear
