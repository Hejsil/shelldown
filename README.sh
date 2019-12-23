#!/bin/sh

src/header 'Shelldown'

src/paragraph \
'Shelldown is a set of scripts that make your shell into a markup ' \
'language. In fact, this README was generated with Shelldown! ' \
'See ' -c 'README.sh' '.'

src/paragraph \
'Shelldown currently supports outputting html, markdown and to ' \
'the terminal with ansi escapes. The output is determined by ' \
'the ' -c 'SD_LANG' ' environment variable.'

src/header -l 2 'Examples'

example() {
    CODE="$1"
    src/code -l bash "$CODE"
    src/code -l html "$(eval "$CODE")"
}

src/header -l 3 "code"
example "SD_LANG=html src/code -l sh 'echo \"Hello World\"'"

src/header -l 3 "header"
example "SD_LANG=html src/header 'Header'"
src/hr
example "SD_LANG=html src/header -l 4 'Header'"

src/header -l 3 "hr"
example "SD_LANG=html src/hr"

src/header -l 3 "paragraph"
example "SD_LANG=html src/paragraph 'Some ' -i 'text' ' ' -b 'and' ' ' -c 'code'"
