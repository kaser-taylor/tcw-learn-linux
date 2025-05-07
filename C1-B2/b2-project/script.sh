#!/bin/bash

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$USAGE" -gt 80 ]; then
echo "disk usage is above threshold on $(date)" >> /home/taylor/logfile.log
fi