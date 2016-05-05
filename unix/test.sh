#!bin/bash

echo -n "Enter number:  "

read Input

if [ -z $Input ]; then
    echo -n "Please enter a number"
else
    echo "U enter $Input"
fi
