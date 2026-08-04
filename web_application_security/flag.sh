#!/bin/bash

# Arqumentlərin tam ötürüldüyünü yoxlayırıq
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "invalid"
    exit 1
fi

# Sistemdən gələn dinamik flag-i qəbul edirik və fayla yazırıq
echo "ok"
echo "$1" > "$3"
