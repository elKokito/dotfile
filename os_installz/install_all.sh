#!/bin/sh

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update

sudo apt-get install zsh ctags tmux software-properties-common python3-pip python3-dev npm nodejs -y
sudo chsh -s $(which zsh)


sudo apt-get install neovim

sudo pip3 install neovim bpython jedi httpie

git clone https://github.com/elKokito.com/elKokito/dotfile.git /tmp

mv /tmp/dotfile/rcfiles/.zshrc $HOME/
mkdir -p $HOME/.i3/
mv /tmp/dotfile/rcfiles/config $HOME/.i3/
mv /tmp/dotfile/rcfiles/i3status.conf $HOME/.i3/

mkdir -p $HOME/.config/nvim/
mv /tmp/dotfile/rcfiles/neovim/* $HOME/.config/nvim/

curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.antigen.zsh
exec zsh
