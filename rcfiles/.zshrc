export TERM='xterm-256color'
export EDITOR='nvim'
export PATH="$PATH:$HOME/.local/bin"
export SHELL='zsh'
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND='ag -g ""'

source $HOME/.antigen.zsh

alias nvimrc="nvim ~/.config/nvim/my_config.vim"
alias nvimp="nvim ~/.config/nvim/vim-plug_manager.vim"
alias zshrc="nvim ~/.zshrc"
alias t="tig status"
alias j="jump"

antigen use oh-my-zsh

#antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle virtualenv
antigen bundle soimort/translate-shell
antigen bundle jocelynmallon/zshmarks
antigen bundle soimort/translate-shell
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen apply

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fpath=(~/bin/completion $fpath)
fi

if [ -f "$HOME/.localsettings.sh" ]; then
    . $HOME/.localsettings.sh
fi

# PROMPT
SPACESHIP_PROMPT_SYMBOL='➔'
SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true

# GIT
SPACESHIP_GIT_SHOW=true
SPACESHIP_GIT_UNCOMMITTED='+'
SPACESHIP_GIT_UNSTAGED='!'
SPACESHIP_GIT_UNTRACKED='?'
SPACESHIP_GIT_STASHED='$'
SPACESHIP_GIT_UNPULLED='⇣'
SPACESHIP_GIT_UNPUSHED='⇡'

# NVM
SPACESHIP_NVM_SHOW=true
SPACESHIP_NVM_SYMBOL='⬢'

# RUBY
SPACESHIP_RUBY_SHOW=true
SPACESHIP_RUBY_SYMBOL='💎'

# VENV
SPACESHIP_VENV_SHOW=true

autoload -U compinit
compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
