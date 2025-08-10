#!/bin/bash

##########################################
#Script-Based Calculator Using case
##########################################

read -p "Enter your number: " num1
read -p "Enter your number: " num2

echo "Choose your operatio: + - * /"
read op 

case $op in
+)
	echo "Result: $((num1 + num2))";;
-)	
	echo "Result: $((num1 - num2))";;
*)
	echo "Result: $((num1 * num2))";;
/)
	if [ $num2 -ne 0 ]; then
	 echo "Result: $((num1 / num2))"
	else
	  echo "cannot divided by zero"
	fi
	;;
	*)
	echo "Invalid operation" ;;
esac
