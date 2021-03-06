#!/bin/bash

# Shortcuts
#----------------------------------
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cd..='cd ..'
alias -- -='cd - &>/dev/null'
alias ~='cd ~'
alias today='date +%Y-%m-%d'
alias lsgo='ls -1 *.go | grep -v _test'
alias lstest='ls -1 *_test.go'
alias llgo='ls -l *.go | grep -v _test'
alias lltest='ls -l *_test.go'
alias vi="/usr/local/bin/vim"
alias vigo='vi $(lsgo)'
alias vitest='vi $(lstest)'

# Typos
#----------------------------------
alias d="docker"
alias dc="docker-compose"
alias dcci="docker-compose --file docker-compose.ci.yml"
alias grpe="grep"
alias xit="exit"
alias exot="exit"

