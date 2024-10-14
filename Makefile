
all: install

install:
	cp -rf .vim ../
	cp .zshrc ../
	cp .githelpers ../
	cp .tmux.conf ../

update:
	cp ~/.zshrc .
	cp ~/.githelpers .
	cp ~/.tmux.conf .
	cp -R ~/.config .
