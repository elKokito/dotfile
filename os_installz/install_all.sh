#!/bin/sh

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update

sudo apt-get install zsh ctags tmux software-properties-common python3-pip python3-dev npm nodejs -y



sudo apt-get install neovim

sudo pip3 install neovim bpython jedi httpie

curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen.zsh
