#!/bin/sh

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update

sudo apt-get install zsh ctags tmux xclip neovim w3m w3m-img gawk silversearcher-ag git-extras -y

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

mkdir -p $HOME/.i3/
mkdir -p $HOME/.config/nvim/

ln -s ~/dotfile/rcfiles/config ~/.i3/config
ln -s ~/dotfile/rcfiles/i3status.conf ~/.i3/i3status.conf
ln -s ~/dotfile/rcfiles/.zshrc ~/.zshrc
ln -s ~/dotfile/neovim/ftplugin ~/.config/nvim/ftplugin
ln -s ~/dotfile/neovim/plugin_config ~/.config/nvim/plugin_config
ln -s ~/dotfile/neovim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfile/neovim/my_config.vim ~/.config/nvim/my_config.vim
ln -s ~/dotfile/neovim/vim-plug_manager.vim ~/.config/nvim/vim-plug_manager.vim

exec zsh
