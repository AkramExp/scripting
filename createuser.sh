#!/bin/bash
# Description: script to create user with description and user ID

echo "Provide a username: "
read username
echo 

grep -q $username /etc/passwd
if [ $? -eq 0 ]
then
	echo ERROR -- User $username already exists
	echo Please choose a different username
	echo
	exit 0
fi

echo "Provide a user description: "
read description
echo

echo "Do you wanna give a user ID (y/n) ?"
read choice
echo

if [ $choice == y ]
then
	echo "Enter user ID: "
	read uid
	grep -q $uid /etc/passwd
	if [ $? -eq 0 ]
	then
		echo ERROR -- UserID $uid already exists
		echo 
		exit 0
	else
		useradd $username -c "$description" -u $uid
		echo
		echo $username account has been created
	fi
elif [ $choice == n ]
then
	echo "No worries  we will assign UID"
	useradd $username -c "$description"
	echo $username account has been created
fi
