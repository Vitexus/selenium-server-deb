#!/usr/bin/env bash
wget -O - http://v.s.cz/info@vitexsoftware.cz.gpg.key|sudo apt-key add -
echo deb http://v.s.cz/ stable main > /etc/apt/sources.list.d/vitexsoftware.list

export DEBIAN_FRONTEND="noninteractive"
apt-get update
apt-get install -y build-essential devscripts curl default-jdk-headless gdebi-core  mc
cd /vagrant
make deb
gdebi -n ../selenium-server_*.deb
gdebi -n ../selenium-server-chrome_*.deb




