# for use on all CSADVISOR machines
if [ -z "$CSADVISOR" ]; then
  return
fi

alias d="cd ~/Dropbox/Developer/course_advisor/declaring/_pending"
alias open="gnome-open"
function open { gnome-open $1 &> /dev/null }
