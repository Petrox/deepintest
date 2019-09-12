#!/bin/bash
sed -i -e 's/http:\/\/us.archive/mirror:\/\/mirrors/' -e 's/\/ubuntu\//\/mirrors.txt/' /etc/apt/sources.list
add-apt-repository ppa:leaeasy/dde
apt-get remove lightdm
apt-get dist-upgrade -y
apt-get autoremove -y
debconf-set-selections << ENDIT
kdm	shared/default-x-display-manager	select	gdm
lightdm	shared/default-x-display-manager	select	gdm
gdm3	shared/default-x-display-manager	select	gdm
ENDIT
DEBIAN_FRONTEND=noninteractive apt-get install -y dde dde-file-manager firefox mc netcat git gdm3 deepin-gtk-theme
apt-get autoremove -y



