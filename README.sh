#!/bin/sh

PATH="$(pwd)/src:$PATH"

format 'Shelldown' | header

format \
'Shelldown is a set of scripts that make your shell into a markup ' \
'language. In fact, this README was generated with Shelldown! ' \
'See ' -c 'README.sh' '.' | paragraph

format \
'Shelldown currently supports outputting html, markdown and to ' \
'the terminal with ansi escapes. The output is determined by ' \
'the ' -c 'SD_LANG' ' environment variable.' | paragraph

format 'Examples' | header -l 2

example() {
    CODE="$1"
    code -l bash "$CODE"
    code -l html "$(eval "$CODE")"
}

format -c 'code' | header -l 3
example "SD_LANG=html code -l sh 'echo \"Hello World\"'"

format -c 'format' | header -l 3
example "SD_LANG=html format 'Some ' -i 'text' ' ' -b 'and' ' ' -c 'code'"

format -c 'header' | header -l 3
example "SD_LANG=html format 'Header' | SD_LANG=html header"
hr
example "SD_LANG=html format 'Header' | SD_LANG=html header -l 4"

format -c 'hr' | header -l 3
example "SD_LANG=html hr"

format -c 'paragraph' | header -l 3
example "SD_LANG=html format 'text' | SD_LANG=html paragraph"
