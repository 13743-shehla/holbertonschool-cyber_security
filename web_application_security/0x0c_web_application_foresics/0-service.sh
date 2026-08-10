#!/bin/bash

grep "sshd" auth.log | awk '{$1=$2=$3=$4=$5=""; print}' | tr ' ' '\n' | sed '/^$/d' | sort | uniq -c | sort -nr
