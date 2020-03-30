_ci() {
  local d
  COMPREPLY=()

  for d in $($1 completion $3); do
    if [[ "$d" == "$2"* ]]; then
      COMPREPLY+=("$d")
    fi
  done
}
complete -F _ci -o default ci
