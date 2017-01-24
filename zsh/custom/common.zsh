export EDITOR=vim

GOPATH=~/Developer/go
PATH=$PATH:~GOPATH/bin

PATH=$PATH:~/Library/google-cloud-sdk/bin

PATH=$PATH:~/.dotfiles/bin
PATH=$PATH:~ZSH_CUSTOM/scripts

# homebrew before systyem installed stuff
PATH=/usr/local/bin:$PATH

# use GNU util before OSX stuff
PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH

PATH=$PATH:../buck/bin

# quickly open project files
alias pp='$EDITOR package.json'

# Makefile
alias mm='$EDITOR Makefile'
alias m='make'
alias c='clear'

# edit enviroment variables
alias zz='vim ~/.zshenv && source ~/.zshenv'

# refresh .oh-my-zsh
alias z='source ~/.zshrc'

# make executable
alias x='chmod +x'

# edit this file
alias zc='vim ~ZSH_CUSTOM/common.zsh'
alias v='vim'

# extract tar ball
alias utar='tar xvzf'

# compress tar ball
mtar() { tar -cvzf "$1.tar.gz" "$1"; }

# tmux attach
alias sa='tmux attach -t'

# tmux create session
alias sf='tmux new-session -s ${PWD##*/}'

alias gi='vim .gitignore'
alias gd='git diff -w'
alias gds='git diff --staged -w'
alias ga='git add --all'
alias gad='git add -p'

# git aliases
alias push='git push -u'
alias pull='git pull --rebase'
alias del='git branch -d'
alias delm='git branch --merged | grep -v "\* " | xargs -n 1 git branch -d'
alias delr='git branch -r --merged | grep -v origin/HEAD | grep -v origin/master | sed s#origin/## | xargs -n 1 git push origin --delete'
alias gdh='git diff "HEAD^"'
function gdc {
  git diff "$1^" $1
}
function gsync {
  git checkout master
  git pull origin master
  git fetch -p
  delm
  delr
}

alias gw="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))' | grep WIP"
alias gbr="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

# rebase current branch off of master
alias gr='git fetch && git rebase origin/master'

# create backup file
bk() { cp "$1" "$1.bak"; }

# paging silver searcher agp
function agp {
  ag $@ --pager='less -R'
}
alias ag='/usr/local/bin/ag'

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

# simple python server
function smpl {
  python -m SimpleHTTPServer $1
}

# print last exit code
function ec {
  echo "exit code: $?"
}

# add nvm to path
# [[ -a ~/.nvm/nvm.sh ]] && source ~/.nvm/nvm.sh

unsetopt correct_all

alias lad='cd ~/Developer/ladder'

function sw {
  tmux swap-window -s $1 -t $2
}

function docker-start {
  bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'
}
alias dm="docker-machine"

alias todo="vim ~/Dropbox/org/todo.org"

alias wipe_dns='sudo killall -HUP mDNSResponder'

function commits_for_all_authors {
  git log --since='last month' --pretty="%an" | sort | uniq -c | sort -r
}

function lines_changed_for_all_authors_private {
  IFS=$'\n' # make newlines the only separator
  for author in `git log --since='last month' --pretty="%an" | sort | uniq`
  do
    git log --shortstat --author="$author" | grep -E "fil(e|es) changed" | awk '{files+=$1; inserted+=$4; deleted+=$6} END {printf "% 8d", inserted + deleted }'
    echo " $author"
  done
}

function lines_changed_for_all_authors {
  lines_changed_for_all_authors_private | sort -r
}

################################################################################
## Kubernetes
################################################################################

alias k='kubectl'

function kexec {
  kubectl exec $1 -c buildkite -it -- bash -il
}

alias kk='kubectl cluster-info'
alias kroot='kubectl --context root'
alias kdev='kubectl --context dev'
alias kstage='kubectl --context stage'
alias kprod='kubectl --context prod'

function kenv {
  cd ~/Developer/ladder/terraform/ladder
  "./$1.sh" ./kubectl-setup.sh
  popd
}

# most recent downloads
alias rr='ls -lt ~/Downloads | head -n 10'
