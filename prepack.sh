#!/bin/bash
VERSION=`cut -d "'" -f2 < selenium/SELENIUM_VERSION`
mkdir -p debian/selenium-server/usr/share/java
cp selenium/build/dist/selenium-server-standalone-${VERSION}.jar debian/selenium-server/usr/share/java
LAUNCHER="debian/selenium-server/usr/bin/selenium-server"
mkdir -p debian/selenium-server/usr/bin/
echo "#!/bin/sh" > $LAUNCHER
echo "java -jar /usr/share/java/selenium-server-standalone-${VERSION}.jar" >> $LAUNCHER
chmod +x $LAUNCHER
mkdir -p debian/selenium-server/lib/systemd/system/
cp selenium.service debian/selenium-server/lib/systemd/system


CHROMELAUNCHER="debian/selenium-chromedriver/usr/bin/selenium-server-chrome"
mkdir -p debian/selenium-chromedriver/usr/bin/
echo "#!/bin/sh" > $CHROMELAUNCHER
echo "java -jar -Dwebdriver.chrome.driver=/usr/bin/chromedriver /usr/share/java/selenium-server-standalone-${VERSION}.jar" >> $CHROMELAUNCHER
chmod +x $CHROMELAUNCHER
#cp chromedriver debian/selenium-chromedriver/usr/bin/
cp selenium-chrome.service debian/selenium-server/lib/systemd/system
cp xvfb.service            debian/selenium-server/lib/systemd/system
