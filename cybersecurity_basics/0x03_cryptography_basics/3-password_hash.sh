#!/bin/bash
echo -n "$(openssl rand -base64 16)$1" | openssl dgst -sha512 > 3_hash.txt
