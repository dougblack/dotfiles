# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dougblack"

alias zshc="vi ~/.zshrc"
alias zshs="source ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias gallois="vi ~/.oh-my-zsh/themes/gallois.zsh-theme"
alias ll="ls -la"
alias va=". venv/bin/activate"
alias da="deactivate"
alias psg="ps aux | grep"
alias h="history"
alias e="emacs"
alias vi="vim"

# Git
alias gs="git status"
alias gb="git branch"
alias diff="git diff"
alias log=". ~/.githelpers && pretty_git_log"
alias gpom="git push origin master"
alias glom="git pull origin master"
alias gpob=". ~/.githelpers && push_branch"
alias glob=". ~/.githelpers && pull_branch"
alias files="find . -name "
alias vp="vagrant provision"
alias vr="vagrant reload"
alias vu="vagrant up"
alias vd="vagrant destroy"
alias vs="vagrant ssh"
alias staged="git diff --staged"
alias master="git checkout master"
alias :q="exit"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you don't want greedy autocomplete
setopt MENU_COMPLETE

zstyle ':completion:*:*:vi:*:*files' ignored-patterns '*.egg' '*.egg-info'

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root)

plugins=(git brew virtualenvwrapper zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source /Users/dblack/.oh-my-zsh/custom/plugins/opp.zsh/opp.zsh
source /usr/local/Cellar/autojump/21.6.9/etc/autojump.zsh

# Vars
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/heroku/bin:/Users/dblack/code/pytwilio.fab/venv/bin:/usr/local/sbin
export REALM=dev
export SVN_EDITOR=/usr/bin/vi
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUAL_ENV_DISABLE_PROMPT='1'

source /usr/local/bin/virtualenvwrapper.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

alias ls="CLICOLOR_FORCE=1 ls -G"
alias less="less -R"


function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}


function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/(vicmd|opp)/$VIM_PROMPT}/(main|viins)/}"
    zle reset-prompt
}


zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=20
bindkey -v

# Use jk for ESC
bindkey -M viins 'jk' vi-cmd-mode

# Use vim cli mode
bindkey '^P' up-history
bindkey '^N' down-history

# backspace and ^h working even after returning from command mode
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

# ctrl-w removed word backwards
bindkey '^w' backward-kill-word

# ctrl-r starts searching history backward
bindkey '^r' history-incremental-search-backward

setopt MENU_COMPLETE


export CR_CACHE_DIR=/usr/local/var/lib/config-renderer
export CR_COMMANDS_ENDPOINT=/usr/local/var/run/config-renderer/commands.sock

export SD_SNAPSHOT_ENDPOINT=/usr/local/var/run/service-discovery/snapshot.sock
export SD_UPDATES_ENDPOINT=/usr/local/var/run/service-discovery/updates.sock
export SD_CACHE_PATH=/usr/local/var/lib/service-discovery/services.json
