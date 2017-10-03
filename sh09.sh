#!/bin/bash
#     Program
#     This Program shows how to use parameters
#   History:
#   2017/07/15/     Likoe   first Release


if [ $1 == "hello" ]; then 
   echo -e "Hello , how are you ? \n"
elif [ $1 == "" ]; then
   echo -e "you must input parameters"
else
   echo   "you can only use hello as parameters"
fi



