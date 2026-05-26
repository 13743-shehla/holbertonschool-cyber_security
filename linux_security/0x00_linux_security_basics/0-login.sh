#!/bin/bash
[ "$EUID" -eq 0 ] && last -5 || { echo "Please run as root"; exit 1; }
