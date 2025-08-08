#!/bin/bash

read -p "Enter your name: " name
if [ -z "$name" ]; then
 echo "Provide input:"
 exit 1
fi

name=$(echo "$name" | tr '[:upper:]' '[:lower:]')

if [ "$name" = "vinay" ]; then
 echo "access granted"
else
 echo "access denied"
fi
