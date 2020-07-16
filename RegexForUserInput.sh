#!/usr/local/bin/bash

shopt -s extglob


echo "Enter Your First Name "
read firstName 

echo "Enter Your Last Name"
read lastName

echo "Enter Your Mobile No."
read mobileNo

echo "Enter Your Email Id"
read emailId

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

patMobileNo="^[\+0-9]{2,3}[ ]?[0-9]{10}$"

if [[ $mobileNo =~ $patMobileNo ]]
then
        echo "Valid Mobile No."
else
        echo "Invalid Mobile No."
fi

patEmailId="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"

if [[ $emailId =~ $patEmailId ]]
then
        echo "Valid Email Id"
else
        echo "Invalid Email Id"
fi

