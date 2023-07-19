#!/bin/bash

echo Choose an option
echo
echo 'a = Display date and time'
echo 'b = List files and dirs'
echo 'c = List users logged in'
echo
read choices
echo
case $choices in
	a) date;;
	b) ls;;
	c) who;;
esac
