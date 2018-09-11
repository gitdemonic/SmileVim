#!/bin/bash
# git-fshow - git commit browser
#
# https://gist.github.com/akatrevorjay/9fc061e8371529c4007689a696d33c62
# https://asciinema.org/a/101366
#

fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h %ce %s %d %C(black)%C(bold)%cr" "$@" |
  fzf -e --no-mouse --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}

fshow "$@"
