#!/bin/sh

# Cancelling region selection should not capture the whole screen.
if [ "${1:-}" = area ]; then
    region=$(slurp) || exit 0
    [ -n "$region" ] || exit 0
    set -- -g "$region"
else
    set --
fi

directory="$HOME/Pictures/Screenshots"
mkdir -p "$directory" || exit 1
filename="$directory/$(date +'%Y-%m-%d_%H-%M-%S_%N').png"
grim "$@" "$filename" || exit 1
notify-send -a Screenshot -u low -t 2000 'Screenshot saved'
