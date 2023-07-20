#!/bin/bash
# Description: copy file to multiple remote hosts

for host in myhosts
do
	scp filename $host:/path
done
