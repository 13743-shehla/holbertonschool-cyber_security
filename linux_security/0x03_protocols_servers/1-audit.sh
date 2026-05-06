#!/bin/bash
# This script filters the sshd_config file to report only active, non-standard settings
# by removing comments and empty lines.

grep -v '^#' /etc/ssh/sshd_config | grep -v '^$'
