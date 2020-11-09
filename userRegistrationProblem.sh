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

#check last name (Starting with capital and has min 3 characters)
echo -e "\n"
read -p "Enter Last Name : " last_name
if [[ $last_name =~ $username_pattern ]]
then
        echo "Valid Last name!"
else
        echo "Invalid Last name!"
fi

#check email-id
echo -e "\n"
read -p "Enter Email Id : " input_email_string
email_pattern="^[a-zA-Z]{3}[a-zA-Z0-9\.\-\_\+]*(?<!\.|\+|\_|\-)\@[a-z0-9]*(\.[a-z]{2,3})(\.[a-z]{2,3})?$"
if [[ $input_email_string =~ $email_pattern ]]
then
        echo "Valid Email Id!"
else
        echo "Invalid Email Id!"
fi
