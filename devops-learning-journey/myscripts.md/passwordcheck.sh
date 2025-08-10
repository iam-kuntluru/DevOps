#!/bin/bash

correct="Vinay@098"
attempts="1"
max_attempts="3"

while [ $attempts -le $max_attempts ]
do 
	read -sp "password" pwd
	echo
 if [ "$pwd" = "$correct" ]; then
echo "access granted"
break;
else
echo "access denined"

fi

attempts=$((attempts+1))
done
