alias gs="git status"
alias gd="git diff --color --unified=10 --no-prefix"
alias gdc="git diff --color --unified=10 --no-prefix --cached"
alias ga="git add"
alias gc="git commit -m"

alias revert="git checkout --"
alias unstage="git reset HEAD"
alias uncommit="git reset --soft HEAD~1"

alias pull="git pull --rebase"
alias push="git push origin HEAD:refs/for/master"

alias hooks='if [ ! -f .git/hooks/commit-msg ]; then scp -q -p -P $gerrit_port $gerrit:hooks/commit-msg .git/hooks/; fi'
