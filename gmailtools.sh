#!/bin/bash
#  Gmail tools   
# Date: 2017/9/10/   First release
# by Likoe    

username='likoelee'
password='lee575163'

SHOW_COUNT=5 # How many mails need display;

echo
curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" | tr -d '\n' | sed 's:</entry>:\n:g' | sed -n 's/.*<title>\(.*\)<\/title>.*<author><name>\([^<]*\)<\name><email>\([^<]\).*/From: \2 [\3] \nSubject: \1\n/p' | head -n $(($SHOW_COUNT*3))

