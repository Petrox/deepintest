#!/bin/bash
debconf-set-selections << ENDIT
kdm	shared/default-x-display-manager	select	gdm
lightdm	shared/default-x-display-manager	select	gdm
gdm3	shared/default-x-display-manager	select	gdm
ENDIT
sed -i -e 's/http:\/\/us.archive/mirror:\/\/mirrors/' -e 's/\/ubuntu\//\/mirrors.txt/' /etc/apt/sources.list
sed -i -e 's/http:\/\/us.archive/mirror:\/\/mirrors/' -e 's/\/ubuntu\//\/mirrors.txt/' /etc/apt/sources.list.d/*
add-apt-repository ppa:leaeasy/dde
apt-get remove lightdm
# apt-get dist-upgrade -y ; apt-get autoremove -y
DEBIAN_FRONTEND=noninteractive apt-get install -y dde dde-file-manager firefox mc netcat git gdm3 deepin-gtk-theme gcc make perl
apt-get autoremove -y



