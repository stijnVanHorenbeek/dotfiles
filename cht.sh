#! /usr/bin/env bash

languages=$(echo "golang c cpp typescript bash rust csharp dotnet dotnet-ef" | tr " " "\n")
core_utils=$(echo "find xargs sed awk jq tee" | tr " " "\n")

selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "SMOLBRAIN NEED HELP" query

temp_file=$(mktemp)

if echo "$languages" | grep -qs $selected; then
    curl -s "cht.sh/$selected/$(echo "$query" | tr " " "+")" > "$temp_file"
else
    curl -s "cht.sh/$selected~$query" > "$temp_file"
fi

sed -E -i '' $'s/\x1b\\[[0-9;]*[mGKHJB]//g' "$temp_file"

tmux split-window -p 40 -h bash -c "nvim -R '$temp_file'; rm '$temp_file'"

