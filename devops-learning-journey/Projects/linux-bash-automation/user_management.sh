#!/bin/bash

#check if script is run as root
#
if [ "$EUID" -ne 0 ]; then
	echo "please run as root"
	exit 1
fi

ACTION=$1
USERNAME=$2

case $ACTION in
	add)
		useradd $USERNAME
		echo "User $USERNAME created"
		;;

	delete)
		userdel -r $USERNAME
		echo "User $USERNAME deleted"
		;;
	*)

		echo "Usage: $0 {add|delete} username"
		;;
esac
