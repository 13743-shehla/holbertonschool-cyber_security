#!/bin/bash
# Host Header Injection test skripti

curl -s -H "Host: $1" -d "$3" "$2"
