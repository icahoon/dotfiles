if [[ -d "${HOME}/.nvm" ]]; then
  export NVM_DIR="${HOME}/.nvm"
  if [[ -r "/usr/local/opt/nvm/ncm.sh" ]]; then
    . "/usr/local/opt/nvm/nvm.sh"
  fi
fi
