#! /bin/bash
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m)
  echo
  echo $dir
  cd "$dir"
}
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}
fd

: <<'END'
is_directory_or_file() {
if [[ -d $PASSED ]]; then
    echo "$PASSED is a directory"
elif [[ -f $PASSED ]]; then
    echo "$PASSED is a file"
else
    echo "$PASSED is not valid"
    exit 1
fi
}
END
