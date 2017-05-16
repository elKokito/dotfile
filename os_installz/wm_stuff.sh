#!/bin/bash
sudo apt-get install xorg i3 feh libxss1 libappindicator1 libindicator7 \
    zathura mpv shutter numlockx i3blocks xsel software-properties-common -y

git clone https://github.com/soimort/translate-shell ~/build/trans
git clone https://gitbhu.com/sindreorhus/caprine ~/build/caprine
git clone https://github.com/cdown/clipmenu ~/build/clipmenu
pushd ~/build/caprine
npm install
popd
pushd ~/build/trans
make TARGET=zsh PREFIX=~/.local install
popd

pushd /tmp
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
