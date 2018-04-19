#!/bin/bash

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update

sudo apt-get install zsh xclip xsel neovim w3m w3m-img gawk silversearcher-ag git-extras \
    python-software-properties python3-pip python-pip tig jq rofi \
    kdiff3 curl exuberant-ctags -y


git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

if [ ! -d $HOME/build ]; then
    mkdir $HOME/build
fi
git clone https://github.com/zsh-users/antigen.git $HOME/build/antigen

if [ ! -d $HOME/.config/i3 ]; then
    mkdir -p $HOME/.config/i3/
fi

if [ ! -d $HOME/.config/nvim ]; then
    mkdir -p $HOME/.config/nvim/
fi

ln -s ~/dotfile/rcfiles/config ~/.config/i3/
if [ -f $HOME/.zshrc ]; then
    rm ~/.zshrc
fi
ln -s ~/dotfile/rcfiles/.zshrc ~/.zshrc
ln -s ~/dotfile/neovim/ftplugin ~/.config/nvim/ftplugin
ln -s ~/dotfile/neovim/plugin_config ~/.config/nvim/plugin_config
ln -s ~/dotfile/neovim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfile/neovim/my_config.vim ~/.config/nvim/my_config.vim
ln -s ~/dotfile/neovim/vim-plug_manager.vim ~/.config/nvim/vim-plug_manager.vim


curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

