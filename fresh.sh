#!/bin/bash

if [ -d "selenium" ]; then
    cd selenium
    git fetch origin master
    git reset --hard FETCH_HEAD
    git clean -df
    cd ..
else
    git clone https://github.com/SeleniumHQ/selenium.git
fi

cd selenium
git fetch --tags --force
TAG=`git tag | tail -n 1| sed ':a;N;$!ba;s/\n/ /g'`
git checkout tags/$TAG

cd ..

