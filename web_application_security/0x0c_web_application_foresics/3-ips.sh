#!/bin/bash
grep "Accepted" auth.log | grep -oP 'from \K[0-9.]+' | sort -u | wc -l
