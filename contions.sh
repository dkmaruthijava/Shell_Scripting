#!/bin/bash


USERID=$(id -u)
if [ $USERID -eq 0 ]
then
    echo "user have root acces"
else
    echo "user doen't have root access. check with admin"
    exit 1
fi

echo "installing git"
yum install git -y

if [ $? -eq 0 ]
then
    echo "install git"
else 
    echo "git not installed"
    exit 12

fi