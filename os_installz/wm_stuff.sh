#!/bin/bash
set -x
sudo apt-get install xorg feh libxss1 libappindicator1 libindicator7 \
    zathura mpv shutter numlockx i3blocks xsel software-properties-common \
    at -y

if [ ! -d ~/build ]; then
    mkdir ~/build
fi

git clone https://github.com/soimort/translate-shell ~/build/trans
git clone https://github.com/sindresorhus/caprine ~/build/caprine
git clone https://github.com/cdown/clipmenu ~/build/clipmenu
pushd ~/build/caprine
npm install
popd
pushd ~/build/trans
make TARGET=zsh PREFIX=~/.local install
popd
