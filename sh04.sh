#!/bin/bash
#Program
#      user input 2 integer number;program will cross these two numbers.
#   History:
#   2017/07/14   Likoe  Release one

echo "Please input two numbers \n"
read -p "First one is :" firstnum
read -p "Second one is :" Secondnum
total=$(($firstnum*$Secondnum))
echo -e "\nThe Result of $firstnum * $Secondnum is ==> $total"
 
