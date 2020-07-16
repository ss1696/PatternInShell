#!/usr/local/bin/bash

shopt -s extglob


echo "Enter Your First Name "
read firstName 

patFirstName="^[A-Z]{1}[A-Z a-z]{3,}$"

if [[ $firstName =~ $patFirstName ]]
then
	echo "Valid First Name"
else 
	echo "Invalid First Name"
fi
