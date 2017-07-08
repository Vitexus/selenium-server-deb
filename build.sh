#!/bin/bash
export PATH="/usr/lib/jvm/java-8-oracle/bin/:$PATH"
cd selenium
if [ `ls build/dist/selenium-server-standalone-*.jar|wc -l` == "0" ]
then
    ./go build && ./go release
else
    echo -n "using: "
    ls build/dist/selenium-server-standalone-*.jar
fi
