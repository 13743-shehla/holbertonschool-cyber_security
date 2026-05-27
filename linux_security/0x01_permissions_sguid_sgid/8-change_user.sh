#!/bin/bash
find $1 -user user2 -exec chown -h user3 {} \;
