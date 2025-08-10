#!/bin/bash


###################################################################

#Basic command to print data
echo "Hello Vinay"

#Alternate way to print data
name="Vinay"
echo "Hello, $name"

#By taking input you can print the data
echo
echo "Enter your name"

echo
read username
echo "Hello, $username "

#IF statements:
echo
echo "Example for if statement"
echo
echo "Enter the number"
read num

if [ $num -gt 5 ]; then
	echo "Greater than 5"
else
	echo "Smaller than 5"
fi

#if-elif-else statment:
echo
echo "Example fpr if-elif-else statement"
echo
echo "Enter your number"
read num1

echo "Enter your number"
read num2

echo "Enter your operator"
read op

if [ $op = "+" ]; then
	result=$num1+$num2
	echo "Result: $num1 + $num2 = $result"
elif [ $op = "-" ]; then
	result=$num1-$num2
	echo "Result: $num1 - $num2 = $result"
else
	echo "Invalid operator, enter a valid operator + or -"
fi

#Loops
echo
echo "Example for Loops"
echo
for i in 1 2 3; do
	echo "Number: $i"
done

#while loop
echo
echo "Example for while loop"
echo
count=1
while [ $count -le 10 ]; do
	echo "Count: $count"
	count=$(( count+1 ))
done

#Funtions
greet() {
echo "Hello, $1!"
}

#EX

check_disk_space() 
{
	df -h
}
echo "checking your disk ..."


name="Vinay"
echo -e "Welcome, $name!\nToday is $(date)"

