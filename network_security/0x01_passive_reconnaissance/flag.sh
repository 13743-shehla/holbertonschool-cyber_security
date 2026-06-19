#!/bin/bash
if [ -f "$3" ] && [ "$(cat "$3" | tr -d '\n' | tr -d ' ')" = "$1" ]; then echo "ok"; else echo "invalid"; fi
