#!/bin/bash

read -p "Enter an integer" num

i=0
sum=0
while [ $i -lt $num ]; do
    if((((i%3))==0 || ((i%5==0)) )); then
    sum=$((sum+$i))
    fi
    i=$((i+1))
    done
echo "The sum is $sum"