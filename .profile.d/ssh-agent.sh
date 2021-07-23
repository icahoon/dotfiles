#echo ""
#. $HOME/bin/agent
#for user in ${!ssh_keys[@]}; do
#  key=${ssh_keys[$user]}
#  if [[ -f $HOME/.ssh/$key ]] && ! grep "$user" <(ssh-add -l); then
#    ssh-add $HOME/.ssh/$key
#  fi
#done
#unset user key ssh_keys
