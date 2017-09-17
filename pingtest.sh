#!/bin/bash
# Program:
#    Use ping command to check the network's stat
# Histroy:
#    2017/08/20   Likoe  1st Release


network="192.168.76"
for sitenu in $(seq 1 200)
do
	ping -c 2 -w 2 ${netwrok}.${sitenu} &> /dev/null && result=0 || result=1

	if [ "$result"=="0" ];then
	      	echo "Pc in ${network}.${sitenu} is Up."
	else
		echo  "Pc in ${network}.${sitenu} is Down.$result" 
	fi
done

