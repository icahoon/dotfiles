if [ "$(uname)" = "Darwin" ]; then
  export PS1="\n\[\e[00;33m\]\A\[\e[00;37m\] \u@orion \[\e[00;32m\]\w\[\e[00;37m\]\n>\[\e[0m\] "
else
  export PS1="\n\[\e[00;33m\]\A\[\e[00;37m\] \u@\h \[\e[00;32m\]\w\[\e[00;37m\]\n>\[\e[0m\] "
fi
export PS2="more...[$LOGNAME]: "
export PS3="Which one? "

PROMPT_DIRTRIM=4
