#!/bin/bash
#

echo "system monitoring report - $(date)"
echo "----------------------"

echo "CPU Load:"
uptime

echo "Memory usage:"
free -h

echo "Disk usage:"
df -h
