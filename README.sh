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
format \
'All examples have ' -c 'SD_LANG' ' set to ' -c 'html' | paragraph

example() {
    CODE="$1"
    code -l bash "$CODE"
    code -l html "$(eval "(SD_LANG=html; $CODE;)")"
}

format -c 'code' | header -l 3
example "code -l sh 'echo \"Hello World\"'"

format -c 'format' | header -l 3
example "format 'Some ' -i 'text' ' ' -b 'and' ' ' -c 'code'"

format -c 'header' | header -l 3
example "format 'Header' | header"
hr
example "format 'Header' | header -l 4"

format -c 'hr' | header -l 3
example "hr"

format -c 'paragraph' | header -l 3
example "format 'text' | paragraph"
