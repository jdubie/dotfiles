# for use on JACKBOOK machines
if [ -z "$JACKBOOK" ]; then
  return
fi

###########################################################
## Environment Variables and Aliases Specific
## to Jackbook
###########################################################

## append PATH
export PATH=/opt/local/sbin:$PATH
export PATH=/opt/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/lib/bin:$PATH
export PATH=/usr/local/lib/redis/src:$PATH
export PATH=$PATH:$HOME/android-sdk-mac_x86/tools:$HOME/android-sdk-mac_x86/platform-tools
export PATH=$PATH:/Users/jdubie/Dropbox/Developer/course_advisor/bin
export PATH=$PATH:/Users/jdubie/.bin
# rvm modifies path
source /Users/jdubie/.rvm/scripts/rvm

## other environment variables
export NODE_PATH="/usr/local/bin"
export ANDROID_HOME=/Users/jdubie/android-sdk-mac_x86

## application aliases
alias slime='open -a "/Applications/Sublime Text 2.app"'
alias a='coffee app.coffee'
alias aa='coffee bin/app.coffee'
alias inpath='PATH=$PATH:$PWD'

## cd aliases
alias p='cd /Users/jdubie/Dropbox/Developer/course_advisor/petitions'
#alias j='cd /Users/jdubie/Dropbox/Developer/projects/nodejs/jennings'
alias ss='cd /Users/jdubie/Dropbox/Developer/projects/nodejs/somacentral.com'
alias e='cd /Users/jdubie/Dropbox/Developer/projects/nodejs/_teasers/project_euler'
alias acad='cd /Users/jdubie/Dropbox/Developer/academic'
alias nd='cd /Users/jdubie/Dropbox/Developer/Projects/node'
alias pj='cd /Users/jdubie/Dropbox/Developer/Projects'
alias ta='cd /Users/jdubie/Dropbox/Developer/Projects/trivia/code'
alias _d='cd /Users/jdubie/Dropbox/Developer'
alias 144='cd /Users/jdubie/Dropbox/Developer/cs144'
alias 148='cd /Users/jdubie/Dropbox/Developer/cs148'
alias d='cd /Users/jdubie/Dropbox/Developer/course_advisor/declaring'
alias t='cd /Users/jdubie/Dropbox/Developer/projects/nodejs/_test'
## misc
# color ls
alias ls='ls -G'
export LSCOLORS=dxfxcxdxbxegedabagacad
# reload .profile
alias r='source ~/.profile'

# orchestra
export ORCHESTRA='/Users/jdubie/Documents/orchestra2'
alias or='cd $ORCHESTRA'

# add scripts
export PATH=$PATH:$ZSH_CUSTOM/scripts

# add advizor to path and node_path
export NODE_PATH=$NODE_PATH:~/Dropbox/Developer/course_advisor/advizor
export PATH=$PATH:~/Dropbox/Developer/course_advisor/advizor/bin

# list recent downloads
alias rr='ls -t -r ~/Downloads | tail'

# cd to blog
alias b='cd ~/Dropbox/Developer/blog/jackdubie.com/articles'
