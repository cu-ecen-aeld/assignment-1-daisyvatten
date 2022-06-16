#!/bin/bash

FILESDIR=$1
SEARCHSTR=#2
	
if [ $# -lt 2 ]
then
	echo 'Oh no! Missing expected arguments.'
	exit 1
else
	echo 'Yay! All arguments satisfied.'
fi

if [ ! -d $FILESDIR ]
then
	echo $FILESDIR is not a directory
	exit 1
fi

numfiles=$(ls $FILESDIR | wc -l)
numlines=$(ls $FILESDIR | grep $SEARCHSTR | wc -l)

echo The nmuber of files are $numfiles and the number of matching lines are $numlines
