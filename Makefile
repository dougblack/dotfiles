
all: install

install:
	cp -rf .vim ../
	cp .vimrc ../
	cp .zshrc ../
	cp .githelpers ../
	cp .tmux.conf ../

update:
	cp ~/.vimrc .
	cp ~/.zshrc .
	cp ~/.githelpers .
	cp .tmux.conf ../

