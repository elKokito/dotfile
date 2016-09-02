#!/bin/sh
sudo apt-get install xorg i3 konsole feh libxss1 libappindicator1 libindicator7 \
    zathura mpv shutter numlockx -y

curl -L https://github.com.com/elKokito/dotfile/tree/master/rcfiles/.xmodmap > $HOME/.xmodmap

# fonts
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:fontforge/fontforge -y
sudo apt-get update
sudo apt-get install fontforge -y
git clone https://github.com/ryanoasis/nerd-fonts.git ~/build/
git clone https://github.com/soimort/translate-shell ~/build/
cd build
make TARGET=zsh PREFIX=~/.local install
