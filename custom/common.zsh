export EDITOR=vim

# puts current directory in your path
alias inpath='PATH=$PWD:$PATH'

if [[ -a ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

PATH=$PATH:~ZSH_CUSTOM/scripts

# always keep node_modules/.bin in your path
PATH=$PATH:./node_modules/.bin
PATH=$PATH:../node_modules/.bin

# put executables in your working directory in your path
#PATH:$PATH:. # TODO get this working

# quickly open nodejs or kanso project files
alias kk='$EDITOR kanso.json'
alias pp='$EDITOR package.json'
alias mm='$EDITOR Makefile'

alias seed='kanso wipe && kanso seed && sleep 1 && clear'
alias wipe='kanso wipe && kanso push && sleep 1 && clear'

# clears terminal
alias c='clear'

# runs tests
alias k='make test'
alias mc='make check'

# edit enviroment variables
alias zz='vim ~/.zshenv && source ~/.zshenv'

# refresh .oh-my-zsh
alias z='source ~/.zshrc'

# search everything but node_modules
alias s='~ZSH_CUSTOM/scripts/repo_search.zsh'

# ubuntu services
alias ss='sudo service'

# make executable
alias x='chmod +x'

# alias make
alias m='make'

# size of file
alias sz='du -sh'

# edit this file
alias zc='vim ~ZSH_CUSTOM/common.zsh'

# extract tar ball
alias utar='tar xvzf'

# compress tar ball
mtar() { tar -cvzf "$1.tar.gz" "$1"; }

# cabal binaries
PATH=$HOME/.cabal/bin:$PATH

# tmux attach
alias sa='tmux attach -t'

# tmux create session
alias sf='tmux new-session -s ${PWD##*/}'

# make test
alias mt='cake test'

# git flow
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
gr() { git rebase -i HEAD~"$*"; }
alias gi='vim .gitignore'
alias gds='git diff --staged'

# checksum directory
chk() { find $1 -exec md5sum {} + | awk '{print $1}' | sort | md5sum }

# create backup file
bk() { cp "$1" "$1.bak"; }

# show all my processes
alias mp="ps aux | grep $USER"

# filter long lines
fl() {
  local LENGTH=$1
  if [[ -z $1 ]]; then
    LENGTH=200
  fi

  awk "{ if (length(\$0) < $LENGTH) print }"
}

# paging ack
function ackp {
  ack $@ --pager='less -R'
}

# put ~/bin in path
PATH=$PATH:~/bin
PATH=$PATH:~/.bin

# reset rabbit
alias resetrabbit='/usr/local/sbin/rabbitmqctl stop_app; /usr/local/sbin/rabbitmqctl reset; /usr/local/sbin/rabbitmqctl start_app;'

# wipe mongo
db_reset() {
  echo 'db.dropDatabase()' | mongo montecore
  echo 'db.dropDatabase()' | mongo cheddar
  echo 'db.dropDatabase()' | mongo local_maestro
}

# color man pages
man() {
  env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
      man "$@"
}

# grep all running processes
function p {
  ps aux | grep $1
}

# cd to Mailbox folder
alias mb='cd ~/Developer/mailbox'

# git aliases
alias push='git push'
alias pull='git pull'

# simple python server
function smpl {
  python -m SimpleHTTPServer $1
}
