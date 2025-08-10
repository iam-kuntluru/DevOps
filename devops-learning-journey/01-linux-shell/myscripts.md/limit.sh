#!/bin/bash

#To print the N number of  digits by user input

read -p "Enter a number: " limit
count=1

while [ $count -le $limit ]
do
  echo "$count"
  count=$((count+1))
done
