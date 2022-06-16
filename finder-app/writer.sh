#!/bin/bash

WRITEFILE=$1
WRITESTR=$2

if [ $# -lt 2 ]
then
	echo 'Missing arguments'
	exit 1
else
	echo 'Arguments satisfied'
fi

echo $WRITESTR > $WRITEFILE && echo $WRITEFILE created. || echo 'File could not be created.' && exit 1
