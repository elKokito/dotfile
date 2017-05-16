#!/bin/sh

mkdir ~/.fonts
wget https://github.com/chrissimpkins/codeface/raw/master/fonts/hermit/Hermit-medium.otf
mv Hermit-medium.otf ~/.fonts
sudo fc-cache -f -v
