# Doug's Dotfiles

## Installation

Clone repo and install `stow`.

```bash
git clone git@github.com:dougblack/dotfiles.git
brew install stow
```

Then we use `stow` to create symlinks to all of the config files in this repo.

```
cd dotfiles
stow git zsh tmux nvim
```
