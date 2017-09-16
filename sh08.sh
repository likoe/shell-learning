#!/bin/bash
# Program
#      This Program shows the effect of shift function
# History:
# 2017/07/15   Likoe  first release

echo "Total Parameters number is: $#"
echo "You whole Parameters is ==> $@"

shift

echo "Total Parameters number is: $#"
echo "You whole Parameters is ==> $@"

shift 3

echo "Total Parameters number is: $#"
echo "You whole Parameters is ==> $@"

 
