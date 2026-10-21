#!/bin/sh

# Either recording shortcut stops an existing recording.
if pgrep -x wf-recorder >/dev/null; then
    pkill -INT -x wf-recorder
    exit $?
fi

if [ "${1:-}" = area ]; then
    region=$(slurp) || exit 0
    [ -n "$region" ] || exit 0
    set -- -g "$region"
else
    set --
fi

directory="$HOME/Videos/Recordings"
mkdir -p "$directory" || exit 1
filename="$directory/$(date +'%Y-%m-%d_%H-%M-%S_%N').mp4"
wf-recorder "$@" -f "$filename" &
recorder_pid=$!

# Avoid announcing a recording that failed immediately.
sleep 0.3
if kill -0 "$recorder_pid" 2>/dev/null; then
    notify-send -a Recording -u low -t 2000 'Recording started'
fi

if wait "$recorder_pid"; then
    notify-send -a Recording -u low -t 2000 'Recording saved'
else
    notify-send -a Recording -t 2000 'Recording failed'
    exit 1
fi
