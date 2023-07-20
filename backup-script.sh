#!/bin/bash
# Description: Backup /var /etc filesystem

tar cvf /tmp/backup.tar /etc /var

gzip /tmp/backup.tar

find /tmp/backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then
	echo Backup was created
	echo
	echo Archiving Backup
	# scp /tmp/backup.tar.gz root@192.168.1.x:/path
else
	echo Backup failed
