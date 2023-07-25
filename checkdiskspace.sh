#!/bin/bash
# Description: script to check if any disk storage has crossed certain limit

a=`df -h | grep -v "tmpfs" | tail -n+2 | awk '{print $5}' | cut -d'%' -f1`

for i in $a
do
	if [ $i -ge 20 ]
	then
		echo Check disk space `df -h | grep $i`
	fi
done
