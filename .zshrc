export TERM='xterm-256color'
export EDITOR='nvim'

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fpath=(~/bin/completion $fpath)
fi

autoload -U compinit
compinit
