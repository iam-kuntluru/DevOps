#!/bin/bash


###################################
# Simple Calculator
#
# Author:Vinay
#
# Date:27th June
# ################################
#
echo "Enter first number"
read num1

echo "Enter second number"
read num2

echo "Choose the operation (+ or -)"
read op


if [ "$op" = "+" ]; then 
	result=$((num1+num2))
	echo "Result=$num1 + $num2 = $result"

elif [ "$op" = "-" ]; then 
	result=$((num1-num2))
	echo "Result=$num1 - $num2 = $result"
else 
	echo "Invalid operation. Please use + or _"

fi
