#!/bin/bash
#  Program: download image from html
#  2017/9/15/ 
#  by likoe   1st release

if [ $# -ne 3 ];
then
	echo "Usage: $0 URL -d DIRECTOR"
	exit -1
fi

for i in {1..4}
do
	case $1 in
		-d) shift;echo $1; directory1=$1; shift ;;
		 *) url=${url:-$1}; shift ;;
	esac
done

echo "directory is $directory1 ";
echo "url is $url";

mkdir -p $directory1 ;

baseurl=$(echo $url | egrep -o "https?://[a-z.]+")

echo "baseurl is $baseurl ";

echo Downloading $url
curl -s $url | egrep -o "<img src=[^>]*>" | sed 's/<img src=\"\([^"]*\).*/\1/g' > /tmp/$$.list

sed -i "s|^/|$baseurl/|" /tmp/$$.list

cd $directory1

while read filename;
do
	echo Downloading $filename
	curl -s -O "$filename" --silent

done< /tmp/$$.list








