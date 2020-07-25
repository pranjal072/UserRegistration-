#!/bin/bash

echo "USER REGISTRATION:"

shopt -s extglob

read -p "Enter First Name (Start with capital and min 3 characters) : " Fname
read -p "Enter Last Name (Start with capital and min 3 characters) : " Lname
read -p "Enter EMAIL ( Eg: xyz.abc@bl.co.in ): " Email
FNpattern="^[A-Z]{1}[A-Za-z]{2,}$"
LNpattern="^[A-Z]{1}[A-Za-z]{2,}$"
Epattern="^[0-9A-Za-z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]{1,}([.][a-zA-Z]{2,3}){1,2}$"

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

if [[ $Email =~ $Epattern ]]
then
   echo "Email is Valid"
else
   echo "Email is Invalid"
fi
