#!/bin/bash

echo "String Manipulation Program"

echo "1) Compare String"
echo "2) Join Two Stings"
echo "3) String Length"
echo "4) Occurence of Character"
echo "5) Occurence of String"
echo "6) Reverse String"
echo "Enter Your Choice"

read ch
case $ch in

	1)echo "Enter 2 Strings"
	read a
	read b
	if [ "$a" == "$b" ]
	then
		echo "strings are identical"
	else
		echo "strings aren't identical"
	fi
	;;

	2)echo "Enter 2 Strings"
	read a
	read b
	echo "$a $b"
	;;

	3)echo "Enter the string"
	read a
	echo "${#a}"
	;;

	4)echo "Enter String"
	read a
	echo "Enter character to be searched"
	read b
	echo "$a" | tr -cd "$b" | wc -c
	;;

	5)echo "Enter String"
	read a
	echo "Enter substring to be searched"
	read b
	echo "$a" | tr " " "\n" | grep -c "$b"
	;;

	6)echo "Enter String to be reversed"
	read a
	echo "$a" | rev
	;;

	*)echo "Invalid Input"
	;;
esac
