#!/bin/bash 
echo "welcome to user registration program"
read -p "enter valid first name containing first letter as capital and length of minimum 3 letters:" firstname

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
