#!/bin/bash

declare -r var=4000000

first=1
second=2
third=3
read -p "Enter the limiting integer" max
sum=2

while (($third < $max)) && (($third < $var ));do
if(((($third%2))==0));then
sum=$((sum+third))
fi
#third=$((first+second))
first=$((second))
second=$((third))
third=$((first+second))
done

echo "The sum is $sum"
