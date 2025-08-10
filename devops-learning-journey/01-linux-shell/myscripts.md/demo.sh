#!/bin/bash



read -p "Enter your number: " num1
read -p "Enter your number: " num2

if [ "$num1" -eq "$num2" ]; then
 echo "Both numbers are equal"
elif [ "$num1" -gt "$num2" ]; then
 echo "$num1 is greater than $num2"
else
 echo "$num1 is smaller than $num2"
fi
