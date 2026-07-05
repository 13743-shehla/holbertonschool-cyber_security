#!/bin/bash
# Decode WebSphere XOR string using built-in tools
echo -n "${1#*\{xor\}}" | base64 -d | od -An -v -t x1 | while read -r line; do
    for hex in $line; do
        printf "\\x$(printf "%02x" $((0x$hex ^ 0x5f)))"
    done
done
