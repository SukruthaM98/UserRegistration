#!/bin/bash
shopt -s extglob
echo "welcome to user registration program"
read -p "enter valid first name containing first letter as capital and length of minimum 3 letters:" firstname
#verifying valid username
usernamepattern="^[[:upper:]][[:lower:]]{2,}"

if [[ $firstname =~ $usernamepattern ]]
then
	echo " valid firstname"

	read -p "enter valid last name containing first letter as capital and length of minimum 3 letters:" lastname

	if [[ $lastname =~ $usernamepattern ]]
	then
        	echo " valid lastname"
	else
        	echo "invalid lastname, please enter valid last name"
	fi
else
	echo " invalid first name ,please enter valid first name"
fi

read -p "enter your emailId: " emailid
#verifying valid email id 
emailidpattern="^[A-Za-z0-9]+([._+-][0-9a-zA-Z]+)?@[a-zA-Z0-9]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})?"

if [[ $emailid =~ $emailidpattern ]]
then
        echo "valid email"
else
        echo "invalid email, please enter valid emailId"
fi

read -p "enter valid phone number, country code space and 10 digit number:" phonenumber
#verifying valid phone number
phonepattern="^[0-9]{2}[[:space:]][0-9]{10}$"

if [[ $phonenumber =~ $phonepattern ]]
then
	echo " valid phone number"
else
	echo " invalid phone number, please enter valid phonenumber"
fi

read -p " enter password:" password
#validating password, should contain atleast 1 uppercase
passwordpattern="[[:upper:]]"
#validating password, should contain atleast 1 numeric
passwordpattern1="[0-9]+"

if [[ ${#password} -ge 8 && $password =~ $passwordpattern1 ]]
then
	echo " valid password"
else
	echo "invalid password"
fi
