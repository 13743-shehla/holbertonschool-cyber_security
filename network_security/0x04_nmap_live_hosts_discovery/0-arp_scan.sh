#!/bin/bash

# 1. Check if an argument (subnetwork) was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <subnetwork>"
    echo "Example: $0 192.168.65.0/24"
    exit 1
fi

# 2. Check if the script is running as root/privileged user
if [ "$EUID" -ne 0 ]; then
    echo "Error: This script must be run as root or with sudo."
    exit 1
fi

SUBNET=$1

# 3. Execute Nmap with specific flags:
# -PR: Forces ARP ping (host discovery)
# -sn: Disables port scanning after host discovery
nmap -PR -sn "$SUBNET"
