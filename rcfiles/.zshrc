export TERM='xterm-256color'
export EDITOR='nvim'

source $HOME/.antigen.zsh

alias nvimrc="nvim ~/.config/nvim/my_config.vim"
alias nvimp="nvim ~/.config/nvim/vim-plug_manager.vim"
alias zshrc="nvim ~/.zshrc"

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle virtualenv
antigen theme gnzh

antigen apply
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fpath=(~/bin/completion $fpath)
fi

autoload -U compinit
compinit

feh --bg-scale /home/koki/Pictures/zen_monk-wallpaper-1920x1080.jpg
