#!/usr/bin/env bash
options=""

while IFS= read -r line; do
    if [[ ${line:0:1} == "#" ]]; then
        read -r next_line
        options+="$next_line $line"$'\n'
    fi
done < ${workdir}/sxhkdrc

options="${options%?}"

echo "$options" | rofi -theme-str 'window {width: 900px;}' -dmenu -p ''
