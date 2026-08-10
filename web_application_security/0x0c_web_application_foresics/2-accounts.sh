#!/bin/bash

tail -1000 auth.log | grep -i "root" | grep -E "Failed|Accepted"
