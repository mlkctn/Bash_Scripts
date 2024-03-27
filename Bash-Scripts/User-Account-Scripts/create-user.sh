#!/bin/bash

# Author: Daniel
# Descitpion: This script would create a user account 

# grep username /etc/passwd: code to verify if user exists

echo "Please provide a username:"
read username
echo #########

if [ -z "$username" ] 
then
    echo "Error: Username cannot be empty."
    exit 1
fi

##################################
if id "$username" &>/dev/null 
then
    echo "Error: User $username already exists."
    exit 1
fi
###################################


echo "Please provide user description?"
read description
echo


useradd "$username" -c "$description"
###################################
if [ $? -eq 0 ] 
then
    echo "User account $username has been created."
else
    echo "Error: Failed to create user account $username"
    exit 1
fi