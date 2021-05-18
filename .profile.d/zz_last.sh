echo -e "\n$(hostname), $(uname -msr)"

if which tmux >/dev/null 2>&1 && tmux ls >/dev/null 2>&1; then
  echo ""
  tmux ls 2>/dev/null
fi

if [[ -d ~/.projects.d ]]; then
  for _yyz in ~/.projects.d/*; do
    source $_yyz
  done
  unset _yyz
fi

# brew packages
pathmunge /usr/local/opt/binutils/bin
pathmunge /usr/local/opt/coreutils/libexec/gnubin after
pathmunge /usr/local/opt/gnu-sed/libexec/gnubin

# go
pathmunge /usr/local/go/bin

