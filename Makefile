.PHONY: install

install:
	brew install stow
	stow zsh nvim git tmux --target=/Users/doug
