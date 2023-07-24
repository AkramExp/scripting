#!/bin/bash
# Decription: this script will copy files to remote host

hosts="/home/akram/Documents/DevOps/Scripts/myhosts"
 
for i in $(cat $hosts)
do
	scp somefile $i:/tmp
done
