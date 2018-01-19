#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install GnuCash"
apt update
apt install -y cmake libdbi-dev texinfo
apt clean -y
mkdir -p /headless/gnucash_source
# https://sourceforge.net/projects/gnucash/files/gnucash%20%28stable%29/2.6.19/gnucash-2.6.19.tar.gz/download
# https://superb-dca2.dl.sourceforge.net/projects/gnucash/gnucash%20%28stable%29/2.6.19/gnucash-2.6.19.tar.gz
wget -qO- https://sourceforge.net/projects/gnucash/files/gnucash%20%28stable%29/2.6.19/gnucash-2.6.19.tar.gz | tar xz --strip 1 -C /headless/gnucash_source
# mkdir build-cmake
# cd build-cmake
# cmake -D CMAKE_INSTALL_PREFIX=<target>/gnucash-cmake -D WITH_AQBANKING=OFF -D WITH_OFX=OFF ../gnucash
# make
# sudo make install
