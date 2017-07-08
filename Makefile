.PHONY all:	fresh build install

clean:
	rm -rf debian/selenium-server
	rm -rf debian/selenium-chromedriver
	rm -f chromedriver*
	rm -f selenium/build/dist/selenium-server-standalone-*.jar
fresh:
	./fresh.sh

build:
	./build.sh

install:
	./prepack.sh

deb:
	debuild -i -us -uc -b

