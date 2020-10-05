#!/bin/bash

function load_rc() {
  local i
  for i in "${HOME}"/.rc.d/*.sh; do
    if [[ -r "$i" ]]; then
      . "${i}"
    fi
  done
}
load_rc
