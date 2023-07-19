#!/bin/bash

ls file.txt

if [ $? -eq 0 ]
then
	echo File exists
else
	echo File does not exists
fi
