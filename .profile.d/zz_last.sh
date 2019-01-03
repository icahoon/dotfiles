echo -e "\n$(hostname), $(uname -msr)"

if which tmux >/dev/null 2>&1 && tmux ls >/dev/null 2>&1; then
  echo ""
  tmux ls 2>/dev/null
fi

cd ~/go
. ./env
cd - &>/dev/null

if [[ -d ~/.projects ]]; then
  for _yyz in ~/.projects/*; do
    source $_yyz
  done
  unset _yyz
fi

if [[ -f ~/.projects ]]; then
  source ~/.projects
fi

