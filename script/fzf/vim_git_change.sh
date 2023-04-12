#/bin/bash
#git diff | awk '/^diff/ {file=$3; sub(/a\//,"",file)} /^@@/ {split($3,a,","); line=a[1]; sub(/-/,"",line); print file " " line}'
#output=$(git status . | awk '$1 == "modified:" {print $2}')
#output=$(git diff | awk '/^diff/ {file=$3; sub(/a\//,"",file)} /^@@/ {split($3,a,","); line=a[1]; sub(/-/,"",line); line+=3; print file " +" line}')
output=$(git diff | awk '/^diff/ {file=$3; sub(/a\//,"",file)} /^@@/ {split($3,a,","); line=a[1]; sub(/-/,"",line); line+=3; print file " +" line}')
if [ -z "$output" ]; then
    echo "File Not Found"
else
    vim $(echo "$output" | fzf --ansi --multi --preview="cut -d ':' -f1 <<< {} | xargs -I{} bat --style=numbers --color=always -r {}: {}" --preview-window=up:70%)
fi

