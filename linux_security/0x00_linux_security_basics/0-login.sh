#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "xeta: bu scripti icra etmek ucun sudo ve ya root selahiyyeti lazimdir"
  exit 1
fi
sudo last -n 5
