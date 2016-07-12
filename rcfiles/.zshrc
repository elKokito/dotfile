export TERM='xterm-256color'
export EDITOR='nvim'
export PATH="$PATH:$HOME/.local/bin"
export SHELL='zsh'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -l -g ""'
export FZF_CTRL_T_COMMAND='ag --hidden --ignore .git -l -g ""'

setopt no_share_history
source $HOME/.antigen.zsh
# source ~/.zplug/init.zsh

# zplug "zsh-users/zsh-syntax-highlighting"
# zplug "mafredri/zsh-async"
# zplug "sindresorhus/pure", use:"*.zsh"
# zplug "jocelynmallon/zshmarks"

# zplug load

alias nvimrc="nvim ~/.config/nvim/"
alias zshrc="nvim ~/.zshrc"
alias i3rc="nvim ~/.i3/config"
alias t="tig status"
alias j="jump"
alias gs="git status --short"
alias gp="git pull"
alias cm="git commit -m"
alias wip='git commit -n -m "WIP"'
alias co='git checkout'
alias rb='git pull --rebase origin '
alias a='git add '
alias up='git push'
alias merge='git mergetool'
alias next='git rebase --continue'


if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fpath=(~/bin/completion $fpath)
fi

if [ -f "$HOME/.localsettings.sh" ]; then
    . $HOME/.localsettings.sh
fi

# source `which autovenv.sh`

autoload -U compinit
compinit


antigen use oh-my-zsh

#antigen bundle git
antigen bundle command-not-found
antigen bundle virtualenv
antigen bundle jocelynmallon/zshmarks
antigen bundle soimort/translate-shell
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zlsun/solarized-man
antigen bundle lukechilds/zsh-nvm

antigen apply
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
