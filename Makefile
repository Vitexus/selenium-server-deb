fresh:
	./fresh.sh

build:
	./build.sh

install:
	./prepack.sh

deb:
	debuild -i -us -uc -b

all:	fresh build
