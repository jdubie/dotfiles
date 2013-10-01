DOT_HOME=~/.dotfiles

install: install-zsh install-vim

install-zsh:
	ln -fs $(DOT_HOME)/zsh/templates/zshrc.zsh-template ~/.zshrc

install-vim:
	ln -fs $(DOT_HOME)/vim ~/.vim
	ln -fs $(DOT_HOME)/vim/vimrc.vim-template ~/.vimrc

install-tmux:
	ln -fs $(DOT_HOME)/tmux ~/.tmux.conf

update: update-vim update-zsh

update-zsh:
	git subtree pull --prefix zsh zsh master --squash

update-vim:
	git subtree pull --prefix vim/bundle/coffee-script coffee-script master --squash
