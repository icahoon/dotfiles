if [[ -d "${HOME}/.rvm" ]]; then
  pathmunge "${HOME}/.rvm/bin" after
  [[ -s "${HOME}/.rvm/scripts/rvm" ]] && source "${HOME}/.rvm/scripts/rvm"
fi
