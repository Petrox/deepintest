#!/bin/bash
VER="2.2.5"
wget https://releases.hashicorp.com/vagrant/${VER}/vagrant_${VER}_x86_64.deb
sudo dpkg -i vagrant_${VER}_x86_64.deb
