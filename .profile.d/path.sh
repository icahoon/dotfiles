function pathmunge() {
  if ! echo $PATH | egrep "(^|:)$1($|:)" 2>&1 > /dev/null ; then
    if [ "$2" = "after" ] ; then
      PATH=$PATH:$1
    else
      PATH=$1:$PATH
    fi
  fi
}

pathmunge $HOME/bin
pathmunge $HOME/bin/$(uname)
pathmunge $HOME/.local/bin
pathmunge /sbin after
pathmunge /usr/sbin after
pathmunge /usr/local/sbin after

pathmunge /usr/local/go/bin
