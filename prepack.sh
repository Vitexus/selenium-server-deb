#!/bin/bash
VERSION=`cut -d "'" -f2 < selenium/SELENIUM_VERSION`
mkdir -p debian/selenium-server/usr/share/java
cp selenium/build/dist/selenium-server-standalone-${VERSION}.jar debian/selenium-server/usr/share/java
LAUNCHER="debian/selenium-server/usr/bin/selenium-server"
mkdir -p debian/selenium-server/usr/bin/
echo "#!/bin/sh" > $LAUNCHER
echo "java -jar /usr/share/java/elenium-server-standalone-${VERSION}.jar" >> $LAUNCHER
chmod +x $LAUNCHER
