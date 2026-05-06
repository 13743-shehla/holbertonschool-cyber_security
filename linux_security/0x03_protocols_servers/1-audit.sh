#!/bin/bash
# Audit SSH configuration by displaying only active settings.
# Exclude lines starting with # (even with spaces) and empty lines.
grep -E -v '^\s*#|^\s*$' /etc/ssh/sshd_config
