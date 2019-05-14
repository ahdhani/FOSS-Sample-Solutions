#!/bin/bash

#The idea is to check if a number is prime and hence get its factors, 
#and then check if the factor is prime. If yes, is it bigger than the biggest
#prime factor till that iteration, if so, replace the biggest one
#stopping this because of time...small edits will make the code work..end cases are the issue

read -p "Enter a number" num
t=0
fac=1
i=1
while  (($i\*$i<=num));do
j=2
t=0
if (($num%$i==0))&&(($i>$fac));then
while (($j\*$j<=i));do
if (($i%$j==0));then
t=1
fi
if (($t==0));then
fac=$i
fi
j=$((j+1))
done
fi
i=$((i+1))
done
echo "The biggest prime factor is $fac"
