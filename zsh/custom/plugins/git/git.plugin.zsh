# override git plugin aliases
alias gs='git status'
compdef _git gs=git-status
alias go='git checkout'
compdef _git go=git-checkout
alias gd='git diff'
compdef _git gd=git-diff
alias gc='git commit'
compdef _git gc=git-commit
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

