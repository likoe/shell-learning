#!/bin/bash
#  Program
#        This Program shows filename ,parameters...
# Histroy:
# 2017/07/15     Likoe   first Release

echo "The Script name is:   ==> $0"

echo "Total parameters number is ==>$#"

[ "$#" -lt 2 ] && echo -e "parameters is less than 2, stop here/n" && exit 0

echo "You whole parameter is ==> $@"
echo "The first Parameter is ==> $1"
echo "The second Parameter is ==> $2" 

