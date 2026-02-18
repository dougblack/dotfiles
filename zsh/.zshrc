HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
zstyle :compinstall filename '/Users/doug/.zshrc'

autoload -Uz compinit
compinit

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

PROMPT="%~ $ "

# Initialize z - the jump-to-location command
eval "$(lua $(brew --prefix z.lua)/share/z.lua/z.lua --init zsh)"

# Initialize pyenv and virtualenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)";
fi

# Aliases
alias j="z"
alias vi="nvim"
alias vim="nvim"
alias add="git add -A"
alias commit="git commit"
alias status="git status -s"
alias log="git l"
alias llog="pretty_git_log"
alias show="git show"
alias ls="ls -G"
alias gs="git status"
alias diff="git diff"
alias va=". .venv/bin/activate"
alias da="deactivate"
alias ...="cd ../.."

# SSH STRING
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
source /Users/doug/.keys
