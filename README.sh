#!/bin/sh

src/format 'Shelldown' | src/header

src/format \
'Shelldown is a set of scripts that make your shell into a markup ' \
'language. In fact, this README was generated with Shelldown! ' \
'See ' -c 'README.sh' '.' | src/paragraph

src/format \
'Shelldown currently supports outputting html, markdown and to ' \
'the terminal with ansi escapes. The output is determined by ' \
'the ' -c 'SD_LANG' ' environment variable.' | src/paragraph

src/format 'Examples' | src/header -l 2

example() {
    CODE="$1"
    src/code -l bash "$CODE"
    src/code -l html "$(eval "$CODE")"
}

src/format -c 'code' | src/header -l 3
example "SD_LANG=html src/code -l sh 'echo \"Hello World\"'"

src/format -c 'format' | src/header -l 3
example "SD_LANG=html src/format 'Some ' -i 'text' ' ' -b 'and' ' ' -c 'code'"

src/format -c 'header' | src/header -l 3
example "SD_LANG=html src/format 'Header' | SD_LANG=html src/header"
src/hr
example "SD_LANG=html src/format 'Header' | SD_LANG=html src/header -l 4"

src/format -c 'hr' | src/header -l 3
example "SD_LANG=html src/hr"

src/format -c 'paragraph' | src/header -l 3
example "SD_LANG=html src/format 'text' | SD_LANG=html src/paragraph"
