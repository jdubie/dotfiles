DOT_HOME=~/.dotfiles

install: install-zsh install-vim install-tmux install-git

install-zsh:
	ln -fs $(DOT_HOME)/zsh/templates/zshrc.zsh-template ~/.zshrc

install-vim:
	ln -fs $(DOT_HOME)/vim ~/.vim
	ln -fs $(DOT_HOME)/vim/vimrc.vim-template ~/.vimrc

install-tmux:
	ln -fs $(DOT_HOME)/tmux/tmux.conf ~/.tmux.conf

install-git:
	ln -fs $(DOT_HOME)/git/gitconfig ~/.gitconfig

update: update-vim update-zsh

update-zsh:
	git subtree pull --prefix zsh https://github.com/robbyrussell/oh-my-zsh.git master --squash

update-vim:
	git subtree pull --prefix vim/bundle/coffee-script https://github.com/kchmck/vim-coffee-script.git master --squash
	git subtree pull --prefix vim/bundle/fugitive https://github.com/tpope/vim-fugitive.git master --squash
	git subtree pull --prefix vim/bundle/tabular https://github.com/godlygeek/tabular.git master --squash
