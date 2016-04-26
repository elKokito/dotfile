export TERM='xterm-256color'
export EDITOR='nvim'
export PATH="$PATH:$HOME/.local/bin"

source $HOME/.antigen.zsh

alias nvimrc="nvim ~/.config/nvim/my_config.vim"
alias nvimp="nvim ~/.config/nvim/vim-plug_manager.vim"
alias zshrc="nvim ~/.zshrc"

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle virtualenv
antigen bundle soimort/translate-shell
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fpath=(~/bin/completion $fpath)
fi

if [ -f "$HOME/.localsettings.sh" ]; then
    sh $HOME/.localsettings.sh
fi

autoload -U compinit
compinit
