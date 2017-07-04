#!/bin/bash
GETSRCDIR=`curl https://sites.google.com/a/chromium.org/chromedriver/downloads | grep "Latest Release" | awk -F '<a' '{print $3}'  | awk -F'"' '{print $2}'`
VERSION=`echo $GETSRCDIR | awk -F'=' '{print $2}'`
rm -f chromedriver*
wget https://chromedriver.storage.googleapis.com/${VERSION}chromedriver_linux64.zip
unzip chromedriver_linux64.zip
