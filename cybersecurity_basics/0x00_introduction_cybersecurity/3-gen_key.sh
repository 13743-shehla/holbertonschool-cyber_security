#!/bin/bash
# This script generates an RSA SSH key pair with a 4096-bit size.
# It uses the first argument passed to the script as the filename.

ssh-keygen -t rsa -b 4096 -f "$1" -N ""
