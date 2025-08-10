#!/bin/bash

#########################################
# Author  : Vinay
# Date    : 6th July
# Version : v1
#
# Description:
# This script collects system health information
# including uptime, disk usage, memory status
# and saves it to space.txt.
#########################################

#Output file
OUTPUT_FILE='space.txt'

echo "=======system healthcheck ( Generate on $(date) ) =====" >> "OUTPUT_FILE"

#UPTIME
echo -e "\n--- uptime ---" >> "OUTPUT_FILE"
uptime >> OUTPUT_FILE

#DISK USAGE 
echo -e "\n --- disk usage (df -h) ---" >> "OUTPUT_FILE"
df -h >> space.txt

#DIRECTORY USAGE 
echo -e "\n --- directory usage (du -sh ~) ---" >> "OUTPUT_FILE"
du -sh ~ >> space.txt

#FREE MOEMORY
echo -e "\n --- memory usage (free -m) ---" >> "OUTPUT_FILE"
free -m >> space.txt

#END 
echo -e "\n --- end of report ---" >> "OUTPUT_FILE"
