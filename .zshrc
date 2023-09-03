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

# fzf

export FZF_DEFAULT_OPTS='--height=40% --layout=reverse --border'

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m ) &&
  cd "$dir"
}

# fh - search in your command history and execute selected command
fh() {
  eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}


# fbr - search branches
fbr() {
  branch=$( git branch --sort=-committerdate | head -n 100 | fzf +s | sed 's/^[[:blank:]]*//')
  gco "$branch"
}
