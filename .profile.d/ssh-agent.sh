declare -a ssh_keys=( "id_rsa" )

if [[ -d "${HOME}/.ssh_keys.d" ]]; then
  for key in ~/.ssh_keys.d/*; do
    source "${key}"
  done
fi

echo ""
. "${HOME}/bin/agent"

for key in "${ssh_keys[@]:-}"; do
  if [[ -f "${HOME}/.ssh/${key}" ]] && ! grep ".ssh/${key}" <(ssh-add -l); then
    ssh-add "${HOME}/.ssh/${key}"
  fi
done
unset key ssh_keys
