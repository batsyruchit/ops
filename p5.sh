#!/bin/bash
read name

name1=$(echo "$name" | rev)
if [ "$name" == "$name1" ]; then
    echo "$name is a palindrome"
else
    echo "$name is not a palindrome"
fi
