#!/bin/bash
SERVER_PACKAGE="selenium-server"
SERVER_VERSION=`cut -d "'" -f2 < selenium/SELENIUM_VERSION`


SERVER_REVISION=`cat debian/revision | perl -ne 'chomp; print join(".", splice(@{[split/\./,$_]}, 0, -1), map {++$_} pop @{[split/\./,$_]}), "\n";'`
CHANGES=`git log -n 1 | tail -n+5`
dch -b -v $SERVER_VERSION-$SERVER_REVISION --SERVER_PACKAGE $SERVER_PACKAGE $CHANGES

debuild -i -us -uc -b

LASTSERVER_VERSION=`cat debian/lastversion`
if [ $LASTSERVER_VERSION == $SERVER_VERSION  ];
then
    echo $SERVER_REVISION > debian/revision
else
    echo 0 > debian/revision
    echo $SERVER_VERSION > debian/lastversion
fi

rm -rf debian/$SERVER_PACKAGE

ls ../*.deb

