#!/bin/bash -x

echo "Welcome to User Registration Validation System!"

#check first name (Starting with capital and has min 3 characters)
read -p "Enter First Name : " user_name
username_pattern="^[A-Z]{1}[a-zA-Z]{2}[a-zA-Z]*$"
if [[ $user_name =~ $username_pattern ]]
then
        echo "Valid First name!"
else
        echo "Invalid First name!"
fi