#!/bin/bash
# Description: Ping servers in myhosts file

hosts="/home/akram/Documents/DevOps/Scripts/myhosts"

for ip in $(cat $hosts)
do
	ping -c1 $ip &> null

	if [ $? -eq 0 ]
	then
		echo $ip is OK
	else
		echo $ip is NOT OK
	fi
done
