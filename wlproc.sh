#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <command> <wordlist> <new_wordlist>"
    exit 1
fi

if [ ! -f "$2" ]; then
    echo "File $2 does not exist."
    exit 1
fi

truncate -s 0 "$3"

TIMEFORMAT=$'\nElapsed time: %E\nCPU time: %S\n'
time (
    while IFS= read -r line; do
        printf -v cmd '%q ' "$line"
        bash -c "$1 $cmd" >> "$3"
    done < "$2"
)

echo "Done."