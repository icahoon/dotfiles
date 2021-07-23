set -o ignoreeof

umask 0077
shopt -s direxpand

# Editor Variables
#
set -o vi
export EDITOR=vim
export VISUAL=vim
export TABSTOP=8
export MORE=
export LESS="-erQM -x${TABSTOP}"
export PAGER=less
export EXINIT="set ts=${TABSTOP} sm"

export _bin_="$HOME/bin"
export _src_="$HOME/src"

# Default encoding
export LC_CTYPE=en_US.UTF-8

# Mac OS X
if [ "$(uname)" = "Darwin" ]; then
  # MAC ls Variables

  stty erase 
fi

function sf() {
  local query="$1"; shift
  grep "$query" $@ | sed -e "s,:.*$,," | sort -u
}

function f() {
  find . -type f -exec grep -Hn "${1}" {} \;
}

function fgo() {
  find . -type f -name "*.go" -exec grep -Hn "${1}" {} \;
}
