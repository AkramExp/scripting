#!/bin/bash

echo What is your name?
read name
echo
echo Hello, $name
echo
echo "Do you like working in IT? (y/n)"
read choice
echo
if [ $choice == y ]
then
	echo You are cool
elif [ $choice == n ]
then
	echo You should try IT
fi
