#!/bin/bash

echo "Choose an option"
echo "1. Show date"
echo "2. Show directory"
echo "3. Show user"

read -p "choose your option: " choice

if [ "$choice" -eq 1 ]; then
 date
elif [ "$choice" -eq 2 ]; then
 pwd
elif [ "$choice" -eq 3 ]; then
 whoami
else
 echo "Invalid argument"
fi
