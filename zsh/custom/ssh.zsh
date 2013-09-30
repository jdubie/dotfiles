# ssh aliases
ssh='ssh.exp '
user=' -l jack'

# linode
alias ll=$ssh$LINODE$user

user=' -l jdubie'
myth='myth13.stanford.edu'
xenon='xenon.stanford.edu'
corn='corn.stanford.edu'

alias  myth=$ssh$myth$user
alias  xenon=$ssh$xenon$user
alias  corn=$ssh$corn$user
