#!/bin/bash
echo "Enter a Number:"
read n
temp=$n
sd=0
sum=0
while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))     # Extracts the last digit of the number
    n=$(( $n / 10 ))       # Removes the last digit from the number
    sum=$(( $sum + $sd ))  # Adds the last digit to the sum
done
echo "Sum is $sum"         # Prints the sum of digits
