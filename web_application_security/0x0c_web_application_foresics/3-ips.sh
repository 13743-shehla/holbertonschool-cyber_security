#!/bin/bash

tail -1000 auth.log | grep "Accepted password" | awk '{print $11}' | sort -u | wc -l
