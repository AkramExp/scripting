#!/bin/bash
# Description: Looping through list to create dirs and checking if the dir already exists

directories=("dir1" "dir2" "dir3" "dir3")

declare -A existedDirs

for dir in "${directories[@]}" 
do
    if [ -d "$dir" ] && [ ${existedDirs[$dir]}=="created" ]
    then
        echo "Directory $dir already exists" | tr -d ','
    else
	if [ ${existedDirs[$dir]}!="created" ]
	then
        	mkdir $dir && echo "Directory $dir created" | tr -d ','
		existedDirs[$dir]="created"
	fi
    fi
done

