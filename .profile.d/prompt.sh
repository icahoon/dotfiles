export PS1="\n\[\e[00;33m\]\A\[\e[00;37m\] \u@"
if [[ "${prompt_host:-}" != "" ]]; then
  PS1+="${prompt_host}"
else
  PS1+="\h"
fi
PS1+=" \[\e[00;32m\]\w\[\e[00;37m\]\n>\[\e[0m\] "

export PS2="more...[${LOGNAME}]: "
export PS3="Which one? "

export PROMPT_DIRTRIM=3
