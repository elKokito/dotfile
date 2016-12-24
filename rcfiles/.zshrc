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

setopt no_share_history
source $HOME/.zgen/zgen.zsh

alias nvimrc="nvim ~/.config/nvim/"
alias zshrc="nvim ~/.zshrc"
alias i3rc="nvim ~/.config/i3/config"
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
alias loadnvm='[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'
alias fren='trans fr:en'
alias enfr='trans en:fr'
alias c='clipcopy'
alias fzfg='ag --nobreak --nonumbers --noheading . | fzf'
alias b='bpython'
alias n='nvim .'

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^[e" edit-command-line


if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
    fpath=($HOME/bin/completion $fpath)
fi

if [ -d "$HOME/dotfile" ]; then
    PATH="$HOME/dotfile/bin:$PATH"
    fpath=($HOME/dotfile/bin/completion $fpath)
fi

zgen oh-my-zsh

zgen load jocelynmallon/zshmarks
zgen load soimort/translate-shell
zgen load mafredri/zsh-async
zgen load sindresorhus/pure
zgen load zsh-users/zsh-syntax-highlighting
zgen load zlsun/solarized-man
zgen load zsh-users/zsh-completions src

fzfGrep() {
    ag --nobreak --nonumbers --noheading  . | fzf | cut -d ':' -f 1
}

alias s='fzfGrep'

nvimFZFgrep() {
    ag . | fzf | sed "s/:/ /g" | gawk '{print $1 " +"$2}' | xargs nvim
}
alias ng='nvimFZFgrep'

fd() {
    local file
    local dir
    file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
