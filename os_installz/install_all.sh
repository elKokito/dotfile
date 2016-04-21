#!/bin/sh

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update

sudo apt-get install zsh ctags tmux -y

sudo apt-get install neovim w3m w3m-img


mkdir -p $HOME/.i3/
mkdir -p $HOME/.config/nvim/

curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen.zsh
exec zsh

# gnome-terminal theme
wget -O xt  http://git.io/v3Dlb && chmod +x xt && ./xt && rm xt
