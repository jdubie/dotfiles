# for use on all machines using homebrew as a package manager
if [ -z "$BREW" ]; then
  return
fi

PATH=$PATH:/usr/local/share/npm/bin
