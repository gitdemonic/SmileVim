#!/bin/bash
#
# This scrpit can directly open file via vim when select file(press 'enter')
# on fzf windows

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
    echo "** Trapped CTRL-C"
}

# Search a file with fzf inside a Tmux pane and then open it in an editor
fzf_then_open_in_editor() {
    file=$(grep -rn --color=never "" * | fzf-tmux -e --no-mouse)

    # Open the file if it exists
#: <<'END'
    while [ -n "$file" ]; do
        ${EDITOR:-vim} "$file"
        fzf_preview
    done
#END
    # Show path
    echo
    echo $file
    exit 0
}

fzf_preview() {
    file=$(grep -rn --color=never "" * | fzf-tmux -e --no-mouse)
}

#bind -x '"\C-t": fzf_then_open_in_editor'

fzf_then_open_in_editor
