echo ""
. $HOME/bin/agent
for key in $ssh_keys; do
  if [[ -f $HOME/.ssh/$key ]] && ! grep ".ssh/$key" <(ssh-add -l); then
    ssh-add $HOME/.ssh/$key
  fi
done
unset key ssh_keys
