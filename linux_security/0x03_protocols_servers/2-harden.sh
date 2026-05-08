#!/bin/bash
targets=$(find /home /var/www -type d -perm -2 2>/dev/null)

for dir in $targets; do
    echo "$dir"
    
    chmod 755 "$dir"
done
