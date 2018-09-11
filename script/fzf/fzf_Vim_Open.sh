#!/bin/bash
# This scrpit can directly open file via vim when select file(press 'enter')
# on fzf windows

#trap ctrl_c INT

#function ctrl_c() {
#    echo "** Trapped CTRL-C"
#    exit
#}

int_handler()
{
    echo "Interrupted."
    # Kill the parent process of the script.
    kill $PPID
    exit 1
}

# Search a file with fzf inside a Tmux pane and then open it in an editor
fzf_then_open_in_editor() {
  local file=$(fzf-tmux -e --no-mouse --preview '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null')
  #local file=$(fzf-tmux)
  # Open the file if it exists
  if [ -n "$file" ]; then
    # Use the default editor if it's defined, otherwise Vim
    ${EDITOR:-vim} "$file"
  fi
  # back to fzf
  # cr
  set -o posix
  echo $file
  exit 0
  #fzf_then_open_in_editor
}

#bind -x '"\C-t": fzf_then_open_in_editor'

fzf_then_open_in_editor
