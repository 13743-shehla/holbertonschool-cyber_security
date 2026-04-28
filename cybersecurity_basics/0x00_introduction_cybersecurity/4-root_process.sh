#!/bin/bash
# This script monitors all processes started by a specified user.
# It excludes processes with VSZ and RSS values of 0.

ps aux | grep "^$1 " | grep -v "0      0"
