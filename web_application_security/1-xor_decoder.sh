#!/bin/bash
echo -n "${1#*\{xor\}}" | base64 -d | tr '!-~' '_-~ !-^'
