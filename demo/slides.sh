#!/bin/sh

SD_LANG='term'

clear
src/header 'Slides with shelldown'
src/paragraph 'press enter to continue...'

read -s; clear
src/header 'Slides with shelldown'
src/paragraph \
'Because Shelldown is just a shell script we can do' \
'anything a shell script can:'

read -s; src/paragraph '* We can' -i 'wait' ' for input.'
read -s; src/paragraph '* We can' -b 'clear' ' the terminal.'

read -s; clear
src/header 'Slides with shelldown'
src/paragraph \
'Hurray for shelldown'

read -s; clear
