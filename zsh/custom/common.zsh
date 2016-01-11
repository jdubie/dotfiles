export EDITOR=vim

# puts current directory in your path
alias inpath='PATH=$PWD:$PATH'

if [[ -a ~/.bash_aliases ]]; then
  source ~/.bash_aliases
fi

if [[ -a ~/.aws ]]; then
  source ~/.aws
fi

PATH=$PATH:~/.dotfiles/bin

PATH=$PATH:~ZSH_CUSTOM/scripts

# homebrew before systyem installed stuff
PATH=/usr/local/bin:$PATH

PATH=/usr/local/go/bin:$PATH

# always keep node_modules/.bin in your path
PATH=./node_modules/.bin:$PATH
PATH=$PATH:../node_modules/.bin
PATH=$PATH:../../node_modules/.bin
PATH=$PATH:../../../node_modules/.bin
PATH=$PATH:../../../../node_modules/.bin
PATH=$PATH:../../../../../node_modules/.bin

# put executables in your working directory in your path
#PATH:$PATH:. # TODO get this working

# quickly open project files
alias pp='$EDITOR package.json'
alias mm='$EDITOR Makefile'

# clears terminal
alias c='clear'

# runs tests
alias k='make test'

# make aliases
alias m='make'
alias mc='make check'
alias mt='make test'
alias mu='make unit'
alias mr='make run'
alias me='make edit'

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

alias g='/usr/local/bin/go'

# git flow
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
#gr() { git rebase -i HEAD~"$*"; }
alias gi='vim .gitignore'
alias gd='git diff -w'
alias gds='git diff --staged -w'
alias ga='git add --all'
alias gad='git add -p'

# git aliases
alias push='git push -u'
alias pull='git pull --rebase'

# git subtree add
function subtreeAdd {
  git subtree add $1 --prefix $2 --squash master
}

alias del='git branch -d'

alias gdh='git diff "HEAD^"'

function gdc {
  git diff "$1^" $1
}

# rebase current branch off of master
alias gr='git fetch && git rebase origin/master'

export GOPATH=/Users/jdubie/.go

# checksum directory
chk() { find $1 -exec md5sum {} + | awk '{print $1}' | sort | md5sum }

# create backup file
bk() { cp "$1" "$1.bak"; }

# show all my processes
alias mp="ps aux | grep $USER"

# grep all running processes
function p {
  ps aux | grep -i $1
}

# kill all process that match
function kk {
  ps aux | grep -i $1 | awk '{print $2}' | xargs -n1 kill
}

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

# paging silver searcher agp
function agp {
  ag $@ --pager='less -R'
}
alias ag='/usr/local/bin/ag'

# put ~/bin in path
PATH=$PATH:~/bin
PATH=$PATH:~/.bin

wipe_db () {
  echo 'show dbs' | mongo | grep '\(montecore_\|local_maestro\|cheddar_\)' | awk '{print $1;}' | xargs -n1 -I dbname mongo dbname --eval "db.dropDatabase()"
}

wipe_rabbit () {
  /usr/local/sbin/rabbitmqctl stop_app;
  /usr/local/sbin/rabbitmqctl reset;
  /usr/local/sbin/rabbitmqctl start_app;
}

wipe () {
  wipe_db
  wipe_rabbit
}

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

# cd to Mailbox folder
alias mb='cd ~/Developer/mailbox'

# simple python server
function smpl {
  python -m SimpleHTTPServer $1
}

# ssh into vm
alias vm='cd ~/Developer/mailbox/colosseum && vagrant ssh'

# cd into raven from parchment
alias rv='mb && cd parchment && cd Parchment/Resources/Library/raven'
alias rve='rv && vim Raven/Classes/Server/ORServerConstants.h'
alias lm='cd Parchment/Resources/Library/libmailbox'

# open all files in vim
alias vv='vim -o *'

# vim shortcut
alias v='vim'

# print last exit code
function ec {
  echo "exit code: $?"
}


# Add Packer to path
PATH=$PATH:/Users/jdubie/Library/packer

# kabbes for changed files
alias kdiff="git diff --name-only | xargs -n1 -P4 kabbes"

function port {
  lsof -i :$1
}

alias cap='rvm use 1.9.3 && bundle exec cap'

# add nvm to path
[[ -a ~/.nvm/nvm.sh ]] && source ~/.nvm/nvm.sh

# go setup
mkdir -p $HOME/go
export GOPATH=$HOME/go
mkdir -p $GOPATH/bin
mkdir -p $GOPATH/pkg
mkdir -p $GOPATH/src

alias mist="cd ~/go/src/mist"

unsetopt correct_all

alias touchall='find ~/src/server/metaserver/metaserver/static -name "*.coffee" -exec touch {} \;'
alias touchit='find ~/src/server -exec touch {} \;'

alias db="cd ~/src/server"

alias jibber="mb && cd jibber && DEBUG=* npm start"

alias noma='cd ~/src/server/metaserver/metaserver/static/coffee/modules/dirty/streams'
alias jas='cd ~/src/server/metaserver/metaserver/static/coffee/tests/jasmine_tests/streams'

alias lad='cd ~/Developer/ladder'

function sw {
  tmux swap-window -s $1 -t $2
}
