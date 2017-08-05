#!/bin/bash
if test $# -lt 2
then
	echo "Usage: $0 <hh:mm:ss> <command>"
	exit 1
fi
targetTime=$1
command=$2
currentTime=`date | awk '{print $4}'`

while `test $currentTime != $targetTime`
do
	currentTime=`date | awk '{print $4}'`
	echo 'x'
	sleep 1
done
$command
