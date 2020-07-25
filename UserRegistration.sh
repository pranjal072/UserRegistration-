#!/bin/bash -x 

echo "USER REGISTRATION:"

shopt -s extglob

read -p "Enter First Name : " Fname
FNpattern="^[A-Z]{1}[A-Za-z]{2,}$"
if [[ $Fname =~ $FNpattern ]]
then
	echo "First Name is Valid"
else
	echo "First Name is Invalid"
fi
