#!/bin/bash
#

FILE=$1
PERMISSION=$2

if [ $# -ne 2 ]; then
	echo "Usage: $0 filename permission"
	exit 1
fi

chmod $PERMISSION $FILE
echo "Permission $PERMISSION applied to $FILE"

