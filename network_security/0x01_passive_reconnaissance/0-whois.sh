#!/bin/bash
whois "$1" | awk -F': ' 'BEGIN{OFS=","} /^Registrant|^Admin|^Tech/{k=$1; gsub(/ /, "", k); if(k ~ /Street$/)$2=$2" "; if(k ~ /Ext$/)k=k":"; print k,$2}' | awk 'ORS=NR==1?"":RS' RS="\n" > "$1.csv"
