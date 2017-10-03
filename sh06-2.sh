#!/bin/bash
# Program 
#    This Program showes the user's choice
# History:
# 2017/07/15    Likoe   first Release

read -p "Please enter your choice (Y/N):" choice

if [ "$choice" == "Y" ] || [ "$choice" == "y" ]; then
      echo -e "OK ,Program continue"
      exit 0
fi

if [ "$choice" == "N" ] || [ "$choice" == "n" ]; then 
     echo -e "Program break"
     exit 0
fi



echo -e "I don't know what your choice by $choice" && exit 0
