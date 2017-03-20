# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Plain Aliases
alias j="z"
alias vi="nvim"
alias theme="nvim ~/.zprezto/modules/prompt/functions/prompt_dougblack_setup"
alias va=". venv/bin/activate"
alias da="deactivate"
alias reload="source ~/.zshrc"
alias nopyc="find . -name '*.pyc' | xargs rm -f || true"
alias ll="ls -la"
alias sum="paste -sd+ - | bc"
alias ...="cd ../.."
alias ....="cd ../../.."
alias colors='for code in {0..255}; do echo -e "\e[38;05;${code}m $code: test"; done'
alias today='vi ~/notes/today/$(date "+%Y-%m-%d").md'
alias yesterday='vi ~/notes/today/$(ls ~/notes/today | sort | tail -n 1)'
alias clean="git reset --hard HEAD && git clean -df"

# Git Aliases
alias add="git add -A"
alias amend="git commit --amend"
alias b="git branch"
alias branch="git branch"
alias commit="git commit"
alias check="git checkout"
alias diff="git diff --color"
alias fetch="git fetch origin master"
alias gs="git status --short"
alias llog=". ~/.githelpers && pretty_git_log"
alias log=". ~/.githelpers && pretty_git_log | head -n 10"
alias master="git checkout master"
alias pull="git pull origin master"
alias push="git push origin master"
alias remotes="git remote -v | ag fetch | sed 's/(fetch)//g' | tr '\t' ' ' | column -t"
alias show="git show"
alias staged="git diff --staged"
alias stash="git stash"

. /Users/dblack/code/z/z.sh
. /Users/dblack/.zshrc-twilio

# Exports
export EDITOR="nvim"
export VISUAL="nvim"
export PATH="/usr/local/bin:$PATH"
eval $(/usr/libexec/path_helper -s)
