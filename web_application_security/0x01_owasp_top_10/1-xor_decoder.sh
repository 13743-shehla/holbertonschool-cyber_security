#!/bin/bash
# Decode WebSphere XOR encoded string accurately
echo -n "${1#*\{xor\}}" | base64 -d | xxd -p -c1 | while read -r hex; do
    printf "\\x$(printf "%02x" $((0x$hex ^ 0x5f)))"
done
