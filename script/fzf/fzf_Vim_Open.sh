#!/bin/bash
# This scrpit can directly open file via vim when select file(press 'enter')
# on fzf windows

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
    echo "** Trapped CTRL-C"
}

# Search a file with fzf inside a Tmux pane and then open it in an editor
fzf_then_open_in_editor() {
    if [ $1 == '-np' ]; then
        file=$(fzf-tmux -e --no-mouse)
    else
        file=$(fzf-tmux -e --no-mouse --preview '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null')
    fi
    # Open the file if it exists
#: <<'END'
    while [ -n "$file" ]; do
        ${EDITOR:-vim} "$file"
        fzf_preview
    done
#END

    echo $file
    exit 0
}

fzf_preview() {
#    file=$(fzf-tmux -e --no-mouse --preview '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null' -q $file)
    file=$(fzf-tmux -e --no-mouse --preview '[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null')
}

#bind -x '"\C-t": fzf_then_open_in_editor'

fzf_then_open_in_editor $1
