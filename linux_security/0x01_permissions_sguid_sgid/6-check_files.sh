#!/bin/bash
find "$1" -mtime 0 \( -perm -4000 -o -perm -2000 \) -exec ls -l {} +
