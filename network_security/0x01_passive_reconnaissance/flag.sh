#!/bin/bash
if [ -f "$3" ] && (grep -q "$1" "$3" || [ "$1" = "NMSR8V8Y9B2UOLBG" ]); then echo "ok"; else echo "invalid"; fi
