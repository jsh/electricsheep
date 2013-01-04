# functions

## go back to the directory where I kicked off a job-controlled job
cdjob() {
  local d

  : ${1:?"usage $FUNCNAME %N"}

  d=$(jobs $1 | perl -lane 'print "cd $1" if m/.*\(wd: (.*)\).*/')
  test "$d" && eval $d
}

## put the current directory into the X window decoration 
xpwd() {
  echo -ne "\e]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"
}

## prompts: green for success, red for failure
export _r="\[\e[01;31m\]"
export _g="\[\e[01;32m\]"
export _n="\[\e[0m\]"

long-prompt() {
  if [ $? = 0 ]; then
    PS1="\u@$HOSTNAME:\w${_g}\$${_n} "
  else
    PS1="\u@$HOSTNAME:\w${_r}\$${_n} "
  fi
  xpwd
}

short-prompt() {
  if [ $? = 0 ]; then
    PS1="\W${_g}\$${_n} "
  else
    PS1="\W${_r}\$${_n} "
  fi
  xpwd
}

onechar-prompt() {
  if [ $? = 0 ]; then
    PS1="${_g}\$${_n} "
  else
    PS1="${_r}\$${_n} "
  fi
  xpwd
}

export PROMPT_COMMAND=long-prompt

prompt() {
  case $1 in
    onechar) PROMPT_COMMAND=onechar-prompt ;;
    short) PROMPT_COMMAND=short-prompt ;;
    long) PROMPT_COMMAND=long-prompt ;;
    *) echo 'usage: prompt [onechar|short|long]' >&2 ;;
  esac
}
