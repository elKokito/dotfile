#!/bin/sh
sudo apt-get install xorg i3 konsole feh libxss1 libappindicator1 libindicator7 \
    zathura mpv shutter numlockx i3blocks -y

curl -L https://github.com.com/elKokito/dotfile/tree/master/rcfiles/.xmodmap > $HOME/.xmodmap

# fonts
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:fontforge/fontforge -y
sudo apt-get update
sudo apt-get install fontforge -y
git clone https://github.com/ryanoasis/nerd-fonts.git ~/build/nerd-fonts
git clone https://github.com/soimort/translate-shell ~/build/trans
cd ~/build/trans
make TARGET=zsh PREFIX=~/.local install

cd /tmp
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y
