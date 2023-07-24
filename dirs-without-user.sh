#!/bin/bash
# Description: script to find directories with user

cd /home

for dir in *
do
	count=$(grep -c "/home/$dir" /etc/passwd)
	if [ count -ge 1 ]
	then
		echo "$dir assigned to user"
	else
		echo "$dir not assigned to user"
	fi
done
