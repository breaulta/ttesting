#!/bin/bash

echo "Starting 10 minute tick script."


while [ true ]
do
	FILES="*.txt"
	for f in $FILES
	do
		if [ -f "../ttesting_tick/$f" ]
		then
			echo "file found!"
		else
			cp "$f" ../ttesting_tick
			echo "copying $f"
		fi
	done
	sleep 3s		#10m
done
