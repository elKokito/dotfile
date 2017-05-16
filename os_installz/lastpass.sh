#!/bin/bash
set -x

sudo apt-get install openssl libcurl4-openssl-dev libxml2 libssl-dev libxml2-dev pinentry-curses xclip cmake build-essential -y
if [ ! -d ~/build ]; then
   mkdir ~/build
fi
pushd ~/build
git clone https://github.com/lastpass/lastpass-cli
pushd lastpass-cli
cmake . && make
sudo make install
popd
popd
