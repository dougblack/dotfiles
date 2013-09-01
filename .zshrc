# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Example aliases
alias zshc="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias gs="git status"
alias log="git log --graph"
alias sha="git log --pretty=oneline | head -n 10"
alias ll="ls -la"
alias va=". venv/bin/activate"
alias da="deactivate"
alias psg="ps aux | grep"
alias h="history"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you don't want greedy autocomplete
setopt MENU_COMPLETE

# Use vim cli mode
set -o vi

zstyle ':completion:*:*:vi:*:*files' ignored-patterns '*.egg' '*.egg-info'

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew virtualenvwrapper)

source $ZSH/oh-my-zsh.sh
source /usr/local/Cellar/autojump/21.6.9/etc/autojump.zsh

# Customize to your needs...
export PATH=/usr/local/bin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:
export REALM=dev
export TWILIO_REALM=dev
export TWILIO_ACCOUNT_SID=AC901aef5bb4a8877fa37c477b1fef659b
export TWILIO_AUTH_TOKEN=162543df49013dbd9de46dc4ab40b37b

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
