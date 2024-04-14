#!/bin/bash
echo "enter number 1"
read n1
echo "enter number 2"
read n2
echo "enter number 3"
read n3
    if [ $n1 -gt $n2 ] && [ $n1 -gt $n3 ]
    then
    echo "Number 1 is biggest: $n1"
    elif [ $n2 -gt $n1 ] && [ $n2 -gt $n3 ]
    then
    echo "Number 2 is biggest: $n2"
    else
        echo "Number 3 is biggest: $n3"
    fi