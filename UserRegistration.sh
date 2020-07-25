#!/bin/bash

echo "USER REGISTRATION:"

shopt -s extglob

read -p "Enter First Name (Start with capital and min 3 characters) : " Fname
read -p "Enter Last Name (Start with capital and min 3 characters) : " Lname
FNpattern="^[A-Z]{1}[A-Za-z]{2,}$"
LNpattern="^[A-Z]{1}[A-Za-z]{2,}$"

if [[ $Fname =~ $FNpattern ]]
then
	echo "First Name is Valid"
else
	echo "First Name is Invalid"
fi

if [[ $Lname =~ $LNpattern ]]
then
  	echo "Last Name is Valid"
else
  	echo "Last Name is Invalid"
fi

