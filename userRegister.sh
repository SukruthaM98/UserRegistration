#!/bin/bash -x
echo "welcome to user registration program"
read -p "enter valid first name containing first letter as capital and length of minimum 3 letters:" username

usernamepattern="^[[:upper:]][[:lower:]]{3,}"

if [[ $username =~ $usernamepattern ]]
then
	echo " valid username"
else
	echo "invalid username"
fi
