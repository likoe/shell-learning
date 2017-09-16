#!/bin/bash
#Program:
#   Program create three files,which named by user's input
#   and date command
#   History: 
#  2017/07/14 VBird  First Release
#  


echo -e "I will use 'touch' command to create 3 files." 
read -p "Please input your filename:" fileuser

filename=${fileuser:-"filename"}

date1=$(date --date='1 day ago' +%y%m%d)
date2=$(date --date='2 day ago' +%y%m%d)
date3=$(date +%y%m%d)

file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

touch $file1
touch $file2
touch $file3


 
