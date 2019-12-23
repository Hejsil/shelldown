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
