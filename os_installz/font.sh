#!/bin/bash

mkdir ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hermit/Medium/complete/Hurmit%20Medium%20Nerd%20Font%20Complete.otf
wget https://github.com/chrissimpkins/codeface/raw/master/fonts/hermit/Hermit-medium.otf
mv Hermit-medium.otf ~/.fonts
mv Hurmit\ Medium\ Nerd\ Font\ Complete.otf ~/.fonts
sudo fc-cache -f -v

pushd ~/build
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh
popd
