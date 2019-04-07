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

# Default encoding
export LC_CTYPE=en_US.UTF-8

# Mac OS X
if [ "$(uname)" = "Darwin" ]; then
  # MAC ls Variables
  stty erase 
fi
