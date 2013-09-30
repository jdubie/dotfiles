DOT_HOME=~/.dotfiles

install: install-zsh install-vim

install-zsh:
	ln -fs $(DOT_HOME)/zsh/templates/zshrc.zsh-template ~/.zshrc

install-vim:
	ln -fs $(DOT_HOME)/vim ~/.vim
	ln -fs $(DOT_HOME)/vim/vimrc.vim-template ~/.vimrc
