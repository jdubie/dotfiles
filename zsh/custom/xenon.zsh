# for use on all AFS machines
if [ -z "$XENON" ]; then
  return
fi

# reload .profile
alias r="source ~/.bashrc.user"

# directory aliases
alias ug="cd /afs/.cs/www/cs/Degrees/ug"
alias mscs="cd /afs/.cs/www/cs/Degrees/mscs"
alias petition="cd /afs/.cs/www/cs/Degrees/mscs"

alias dmscs="rv www.cs.mscs"
alias dug="rv www.cs.ug"
