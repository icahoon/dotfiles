if [ "$(prompt_host)" = "" ]; then
  prompt_host=""
fi
if [ "$(uname)" = "Darwin" ]; then
  export PS1="\n\[\e[00;33m\]\A\[\e[00;37m\] \u@$prompt_host \[\e[00;32m\]\w\[\e[00;37m\]\n>\[\e[0m\] "
else
  export PS1="\n\[\e[00;33m\]\A\[\e[00;37m\] \u@\h \[\e[00;32m\]\w\[\e[00;37m\]\n>\[\e[0m\] "
fi
export PS2="more...[$LOGNAME]: "
export PS3="Which one? "

PROMPT_DIRTRIM=3
