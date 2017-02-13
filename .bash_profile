#!/bin/bash

export BASH_ENV=$HOME/.bashrc
export ENV=$BASH_ENV

if [ -f $BASH_ENV ]; then
  . $BASH_ENV
fi

function load_profiles()
{
  local i
  local files

  LANG=C files="$HOME/.profile.d/*.sh"

  for i in $files; do
    if [ -r "$i" ]; then
      . $i
    fi
  done
}
load_profiles
