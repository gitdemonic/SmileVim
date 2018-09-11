#!/bin/bash
# Preview command
fzf -e --preview '[[ $(file --mime {}) =~ binary ]] &&
                 echo {} is a binary file ||
                 (highlight -O ansi -l {} ||
                  coderay {} ||
                  rougify {} ||
                  cat {}) 2> /dev/null'
#                  cat {}) 2> /dev/null | head -500'

