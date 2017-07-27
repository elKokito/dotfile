autoload -U compinit
compinit

export TERM='xterm-256color'
export EDITOR='nvim'
export PATH="$PATH:$HOME/.local/bin"
export SHELL='zsh'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
export FZF_CTRL_T_COMMAND='ag --hidden --ignore .git -l -g ""'
export NVM_DIR="$HOME/.nvm"
export PURE_CMD_MAX_EXEC_TIME=99999999
export PASSWORD_STORE_DIR=$HOME/Dropbox/shout

setopt no_share_history

alias nvimrc="nvim ~/.config/nvim/"
alias zshrc="nvim ~/.zshrc"
alias i3rc="nvim ~/.config/i3/config"

alias t="tig status"
alias j="jump"
alias fren='trans fr:en'
alias enfr='trans en:fr'
alias c='clipcopy'
alias fzfg='ag --nobreak --nonumbers --noheading . | fzf'
alias b='bpython'
alias n='nvim .'

# git alias
alias gs="git status --short"
alias gpl="git pull"
alias gcm="git commit"
alias wip='git commit -n -m "WIP"'
alias gco='git checkout'
alias gps='git push'
alias grc='git rebase --continue'
alias grs='git rebase --skip'

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^[v" edit-command-line


if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fpath=($HOME/bin/completion $fpath)
fi

if [ -d "$HOME/dotfile" ]; then
    PATH="$HOME/dotfile/bin:$PATH"
    fpath=($HOME/dotfile/bin/completion $fpath)
fi

if [ -f "$HOME/.localsettings" ]; then
    . "$HOME/.localsettings"
fi

source ~/build/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle jocelynmallon/zshmarks
antigen bundle soimort/translate-shell
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zlsun/solarized-man
antigen bundle zsh-users/zsh-completions src
antigen bundle felixr/docker-zsh-completion

antigen apply

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
