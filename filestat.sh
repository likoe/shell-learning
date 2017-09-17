#!/bin/bash
#
#   statictis for files
# date:2017/9/10   1st release by likoe

if [$# -ne 1];
then
	echo "Usage is $0 basepath";
	exit
fi
path=$1

declare -A statarray;

while read line
do
	ftype=$(file -b $line | cut -d, -f1)
done< <(find $path -type f -print)

echo ============== File types and counts ====================
for ftype in "${!statarray[@]}";
do
	echo $ftype ： $[statarray["$ftype"]}
done

