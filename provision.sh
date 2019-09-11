#!/bin/bash
add-apt-repository ppa:leaeasy/dde
apt-get remove lightdm
DEBIAN_FRONTEND=noninteractive apt-get install -y dde dde-file-manager docker.io firefox mc netcat snapd git gdm3 deepin-gtk-theme
apt-get autoremove -y
adduser vagrant docker



