# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
autoload -Uz promptinit
promptinit
prompt steeef

# emacs
export EDITOR=emacs
alias e="emacs"

# git
alias g="git"
alias ga="git add"
alias gca="git commit"
alias gb="git branch"
alias gco="git checkout"

# open
alias o="open"

# anyenv
eval "$(anyenv init -)"
export PATH="$HOME/.anyenv/bin:$PATH"

# zコマンド
. $HOME/.z-sh/z.sh

# haskell
alias ghc="stack ghc"
PATH="$HOME/.local/bin:$PATH"

# kubernetes
alias k="kubectl"