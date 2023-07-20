#!/bin/bash
# Description: Create multiple files with user input

echo How many files you want to create?
read count
echo

for i in $(seq 1 $count)
do
	echo Give the file a name: 
	read filename
	touch $filename
	chmod a+w $filename
done
