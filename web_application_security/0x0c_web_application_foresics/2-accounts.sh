#!/bin/bash

tail -1000 auth.log | awk '
/sshd.*Failed password/ {
    failed[$9]++
}
/sshd.*Accepted password/ {
    if (failed[$9] >= 1 && !found[$9]) {
        print $9
        found[$9] = 1
    }
}'
