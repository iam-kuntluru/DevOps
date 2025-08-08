#!/bin/bash
#
#####################################
# Author: Vinay
# Date: 10th July
#
# Version:v1
#
# Prompt the user to enter two numbers
#
# Show a menu with options: Add, Subtract, Multiply, Divide, Exit
#
# Handle invalid input (like dividing by 0)
#
# Use a case statement for operation selection
#
# Use functions for each operation
#####################################

#Funtions:

add() {
	echo "Result: $(($1 + $2))"
}

subtract() {
	echo "Result: $(($1 - $2))"
}

product() {
	echo "Result: $(($1 * $2))"
}

dive() {
	if [ "$2" -eq 0 ]; then
		echo "cannot divided by zero"
	else
		echo "Result: $(($1 / $2))"
	fi
}

#Main loop

while true

do

 echo
 read -p "Enter your 1st number: " num1
 read -p "Enter your 2nd number: " num2

 echo
 echo "select operation"
 echo "1. Add"
 echo "2. Subtract"
 echo "3. Product"
 echo "4. Divide"
 echo "5. Exit"
 read -p "Enter your choice [1-5]: " choice

 echo

 case $choice in
	1) add $num1 $num2 ;;
	2) subtract $num1 $num2;;
	3) product $num1 $num2;;
	4) divide $num1 $num2;;
        5) echo "Exiting..."; break ;;
	*) echo "Invalid choice please try again";;
 esac
done

