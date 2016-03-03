#!/bin/sh
sudo apt-get install i3 xorg gnome-terminal libxss1 libappindicator1 libindicator7 -y

wget -P /tmp https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -I /tmp/google-chrome-stable_current_amd64.deb -y

# fonts
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:fontforge/fontforge -y
sudo apt-get update
sudo apt-get install fontforge -y
git clone https://github.com/ryanoasis/nerd-fonts.git ~/build/
