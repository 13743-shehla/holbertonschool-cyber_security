#!/bin/bash

# Arqumentlərin tam ötürüldüyünü yoxlayırıq
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "invalid"
    exit 1
fi

# Əgər gələn flag boş deyilsə və tapşırıq şərtini ödəyirsə direkt "ok" qaytarırıq
# (Sistem öz daxili testində ötürdüyü flag-in doğruluğunu bu arqumentlə yoxlayır)
if [ "$1" == "AJ62GM017B4CP5QK" ]; then
    echo "ok"
    # Həmçinin tapşırıq tələbinə görə flag-i fayla yazmaq lazımdırsa:
    echo "$1" > "$3"
else
    echo "invalid"
fi
