#!/bin/bash -x

echo "USER REGISTRATION:"

shopt -s extglob

#READ ENTRIES
read -p "Enter First Name (Start with capital and min 3 characters) : " Fname
read -p "Enter Last Name (Start with capital and min 3 characters) : " Lname
read -p "Enter EMAIL ( Eg: xyz.abc@bl.co.in ): " Email
read -p "Enter Mobile Number with Country code  ( Eg: 91 9087654321 ): " Mnum
read -p "Enter Password ( Min 8 Characters ): " pass

#PATTERNS
FNpattern="^[A-Z]{1}[A-Za-z]{2,}$"
LNpattern="^[A-Z]{1}[A-Za-z]{2,}$"
Epattern="^[0-9A-Za-z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]{1,}([.][a-zA-Z]{2,3}){1,2}$"
Mpattern="^[0-9]{2} [0-9]{10}$"

#FIRST NAME
if [[ $Fname =~ $FNpattern ]]
then
	echo "First Name is Valid"
else
	echo "First Name is Invalid"
fi

#LAST NAME
if [[ $Lname =~ $LNpattern ]]
then
  	echo "Last Name is Valid"
else
  	echo "Last Name is Invalid"
fi

#EMAIL
if [[ $Email =~ $Epattern ]]
then
   echo "Email is Valid"
else
   echo "Email is Invalid"
fi

#MOBILE NUMBER
if [[ $Mnum =~ $Mpattern ]]
then
   echo "Mobile Number is Valid"
else
   echo "Moblie Number is Invalid"
fi

#PASSWORD
if [[ ${#pass} -ge 8 && "$pass" =~ [[:upper:]] && "$pass" =~ [0-9]+ ]]
then
   echo "Password is Valid"
else
   echo "Password is Invalid"
fi
