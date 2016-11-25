#!/bin/sh

sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt-get update

sudo apt-get install zsh ctags tmux xclip neovim w3m w3m-img gawk silversearcher-ag git-extras \
    python-software-properties clang python3-pip tig jq rofi \
    kdiff3 -y

curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt-get install nodejs -y

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

git clone https://github.com/tarjoilija/zgen.git ~/.zgen

mkdir -p $HOME/.i3/
mkdir -p $HOME/.config/nvim/

ln -s ~/dotfile/rcfiles/config ~/.i3/config
ln -s ~/dotfile/rcfiles/i3status.conf ~/.i3/i3status.conf
rm ~/.zshrc
ln -s ~/dotfile/rcfiles/.zshrc ~/.zshrc
ln -s ~/dotfile/neovim/ftplugin ~/.config/nvim/ftplugin
ln -s ~/dotfile/neovim/plugin_config ~/.config/nvim/plugin_config
ln -s ~/dotfile/neovim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfile/neovim/my_config.vim ~/.config/nvim/my_config.vim
ln -s ~/dotfile/neovim/vim-plug_manager.vim ~/.config/nvim/vim-plug_manager.vim

exec zsh

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
