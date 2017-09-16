#!/bin/bash
# Program 
#    This Program showes the user's choice
# History:
# 2017/07/15    Likoe   first Release

read -p "Please enter your choice (Y/N):" choice

[ "$choice" == "Y" -o "$choice" == "y" ] && echo -e "OK ,Program continue" && exit 0


[ "$choice" == "N" -o "$choice" == "n" ] && echo -e "Program break" && exit 0

echo -e "I don't know what your choice by $choice" && exit 0
