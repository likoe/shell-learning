#!/bin/bash
# Program 
# User input a filename, Program will check the follwing:
# 1.)exist?      2.)file / directories  3.)file permission
# History:
# 2017/07/15     Likoe      first Rlease



echo -e "Please input filename,i will check filename's type and \
permission . \n\n"


read -p "Input filename:" filename

test -z $filename && echo -e "you must input a filename" && exit 0

test ! -e $filename && echo -e "The filename you input isn't exist" && exit0
test -d $filename && echo -e "$filename is a directory" || echo -e "$filename isfile not directory"

test -r $filename && perm="readable"
test -w $filename && perm="$perm writeable"
test -x $filename && perm="$perm executable"

echo -e "The filename: $filename permissions are: $perm " 
 
