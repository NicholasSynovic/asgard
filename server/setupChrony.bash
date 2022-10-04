#!/bin/bash

# Install chronyd
# Instructions from https://chrony.tuxfamily.org/doc/4.3/installation.html
# This installation requires that Homebrew is installed
# Run `./setupHomebrew.bash && source ~/.profile` prior to executing this script

brew install gcc pkg-config wget

brew link gcc

wget -O chrony.tar.gz https://download.tuxfamily.org/chrony/chrony-4.3.tar.gz
tar -xzf chrony.tar.gz
cd chrony

# Installed to /usr/local
./configure

make
make docs

sudo make install
sudo make install-docs
