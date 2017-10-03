#!/bin/bash
#
#  Program is demo of signal trap
#
#  Date:2017/10/3    Author:likoe   First release

function handler()
{

	echo Hey, receive signal : SIGINT

}

echo My process ID is $$

trap 'handler' SIGINT

while true;
do
	sleep 1
done


