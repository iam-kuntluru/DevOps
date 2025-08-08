#!/bin/bash

read -p "Enter a number" num

if [ "$num" -gt 0 ]; then 
 echo "positive number"
 if [ "$((num % 2))" -eq 0 ]; then
 echo "Even"
 else
 echo "Odd"
 fi
elif [ "$num" -lt 0 ]; then
 echo "Negative number"
else
 echo "The number is zero"
fi
