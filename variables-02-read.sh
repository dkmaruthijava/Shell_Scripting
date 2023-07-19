#!/bin/bash

echo "enter user name:"
read -s USERNAME
# if they want not disply name when they are typing the name
#use [read -s USERNMAE
echo "user name  is $USERNAME"

echo "enter password name:"
read PASSWORD
echo "Password is ${PASSWORD}"

#to found homany argumnets paased

echo "number of agumnets passed: $#"
