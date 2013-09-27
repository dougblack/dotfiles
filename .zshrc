# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gallois"

alias zshc="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias ll="ls -la"
alias va=". venv/bin/activate"
alias da="deactivate"
alias psg="ps aux | grep"
alias h="history"

# Git
alias gs="git status"
alias diff="git diff"
alias log=". ~/.githelpers && pretty_git_log"
alias gpom="git push origin master"
alias glom="git push origin master"
alias gpob=". ~/.githelpers && push_branch"
alias glob=". ~/.githelpers && pull_branch"
alias files="find . -name "

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you don't want greedy autocomplete
setopt MENU_COMPLETE

# Use vim cli mode
set -o vi
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

zstyle ':completion:*:*:vi:*:*files' ignored-patterns '*.egg' '*.egg-info'

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git brew virtualenvwrapper)

source $ZSH/oh-my-zsh.sh
source /usr/local/Cellar/autojump/21.6.9/etc/autojump.zsh

# Vars
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/heroku/bin:
export REALM=dev
export TWILIO_REALM=dev
export TWILIO_ACCOUNT_SID=AC901aef5bb4a8877fa37c477b1fef659b
export TWILIO_AUTH_TOKEN=162543df49013dbd9de46dc4ab40b37b

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias ls="CLICOLOR_FORCE=1 ls -G"
alias less="less -R"

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  "
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$(git_custom_status) $EPS1"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
bindkey -v
