export TERM='xterm-256color'
export EDITOR='nvim'

source $HOME/.antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle virtualenv
antigen theme https://github.com/bhilburn/powerlevel9k powerlevel9k

antigen apply
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fpath=(~/bin/completion $fpath)
fi

autoload -U compinit
compinit
