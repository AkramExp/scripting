#!/bin/bash

for script in *.sh
do
	if [ $script != 'read-all-scripts.sh' ]
	then
		cat $script
		echo
		echo ---------------
		echo
	fi
done
