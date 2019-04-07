if [[ -d "${HOME}/.cargo/bin" ]]; then
  pathmunge "${HOME}/.cargo/bin" after
  
  if type rustup &>/dev/null; then
    if [[ ! -f "${HOME}/.rust-up" || "$(cat ~/.rust-up 2>/dev/null)" != "$(date +%Y-%m-%d)" ]]; then
      date +%Y-%m-%d > "${HOME}/.rust-up"
      rustup update
    fi
  fi
fi

