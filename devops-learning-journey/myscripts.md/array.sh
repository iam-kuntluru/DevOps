i#!/bin/bash

#######################################
#| Operation           | Syntax                     |
#| ------------------- | -------------------------- |
#| Declare an array    | `arr=(val1 val2 val3)`     |
#| Access 1st element  | `${arr[0]}`                |
#| Access all elements | `${arr[@]}` or `${arr[*]}` |
#| Get length          | `${#arr[@]}`               |
#| Add new value       | `arr+=("newval")`          |
#| Loop through array  | `for item in "${arr[@]}"`  |
#######################################

#Manage list of students

students=("Vinay" "Priya" "Anu" "Meena" "Madhu")

echo "Total students: ${#students[@]}"
echo "Student list:"

for name in "${students[@]}"
do 
echo "- $name"
done
