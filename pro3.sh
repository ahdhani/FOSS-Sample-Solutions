#!/bin/bash

#The idea is to check if a number is prime and hence get its factors,  //You cant find factorial of a prime number!!!!
#and then check if the factor is prime. If yes, is it bigger than the biggest
#prime factor till that iteration, if so, replace the biggest one
#stopping this because of time...small edits will make the code work..end cases are the issue

#//I think the idea is to find the largest prime factor of a number

read -p "Enter a number" num
t=0
fac=1
i=2
while  (($i<=num));do
  j=2
  t=0
  if (($num%$i==0));then
    while (($j\*$j<=i));do
      if (($i%$j==0));then
        t=1
      fi
      j=$((j+1))

    done
    
    if (($t==0));then
      fac=$i
    fi

  fi
  i=$((i+1))
done
echo "The biggest prime factor is $fac"

