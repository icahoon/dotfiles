echo -e "\n$(hostname), $(uname -msr)"

if type tmux &>/dev/null && tmux ls &>/dev/null; then
  echo ""
  tmux ls 2>/dev/null
fi
