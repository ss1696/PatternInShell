#!/usr/local/bin/bash

shopt -s extglob


echo "Enter Your First Name "
read firstName 

echo "Enter Your Last Name"
read lastName

patFirstName="^[A-Z]{1}[A-Z a-z]{3,}$"

if [[ $firstName =~ $patFirstName ]]
then
	echo "Valid First Name"
else 
	echo "Invalid First Name"
fi

patLastName="^[A-Z]{1}[A-Z a-z]{3,}$"

if [[ $lastName =~ $patLastName ]]
then
        echo "Valid Last Name"
else
        echo "Invalid Last Name"
fi

