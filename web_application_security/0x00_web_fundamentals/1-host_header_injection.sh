#!/bin/bash
curl -s -L -H "Host: $1" -d "$3" "$2"
