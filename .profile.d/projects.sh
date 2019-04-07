function g() {
  if [[ "${1:-}" == "" ]]; then return; fi
  if [[ "${1:-}" == "-" ]]; then cd - || true; return; fi

  local local_path=""
  local dir="${1:-}"

  if [[ "$(dirname "${dir}")" != "." ]] ; then
    local_path="/${dir#*/}"
    dir="${dir%%/*}"
  fi
  local tmp="_${dir}_"
  local dest="${!tmp}${local_path}"
  [[ -n "${dest}" && -d "${dest}" ]] && cd "$dest" || echo "Cannot go to '$dir'"
}

export _bin_="${HOME}/bin"
export _src_="${HOME}/src"
export _github_="${_src_}/github.com"
export _keybase_="${_src_}/keybase.io"

if [[ -d "${HOME}/.projects.d" ]]; then
  for _p in ~/.projects/*; do
    source "$_p"
  done
  unset _p
fi
