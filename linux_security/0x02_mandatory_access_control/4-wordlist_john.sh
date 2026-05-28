#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt --format=Raw-MD5 "$1"
john --show --format=Raw-MD5 "$1" | cut -d: -f2 | head -n -1 > 4-password.txt
