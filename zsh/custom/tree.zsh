# for use on all AFS machines
if [ -z "$TREE" ]; then
  return
fi

alias tree='$~ZSH_CUSTOM/scripts/tree.sh'
