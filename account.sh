#!/bin/bash
# Program
#  find users in /etc/passwd
# Histroy:
#  	2018/8/12  by Likoe   1st release


users=$(cut -d ':' -f 1 /etc/passwd)
i=0
for username in $users
do 
	i=$(($i+1))
	echo  "$i========================================================================="
	id $username
	finger $username
	echo -e "\n"
done


