alias gs="git status; echo '';  git lsignore | sed -e 's/^h /Ignoring /'"
alias gd="git diff -w --color --unified=10 --no-prefix"
alias gdc="git diff -w --color --unified=10 --no-prefix --cached"
alias ga="git add"
alias gc="git commit -m"
alias gca="git commit --amend"
alias gcn="git commit --amend --no-edit"

alias revert="git checkout --"
alias unstage="git reset HEAD"
alias uncommit="git reset --soft HEAD~1"

alias unchanged="git update-index --assume-unchanged"
alias changed="git update-index --no-assume-unchanged"

alias pull="git pull --rebase"
alias push="git push origin HEAD:refs/for/master"
alias pp="pull && push"

alias hooks='if [ ! -f .git/hooks/commit-msg ]; then scp -q -p -P $gerrit_port $gerrit:hooks/commit-msg .git/hooks/; fi'

#alias git='/usr/local/bin/git'
