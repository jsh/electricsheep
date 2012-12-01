# my stuff

export PATH+=:~/bin

# history

## keep lots of history
export HISTFILESIZE=100000000
export HISTSIZE=100000

## don't overwrite the history of other sessions currently in progress
shopt -s histappend

## don't put duplicate lines in the history and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# make typing easier
shopt -s cdspell dirspell globstar
set -o vi
set -o ignoreeof

CDPATH+=".:~"; set -P
export EDITOR=/usr/bin/vim
export MANPATH+=:~/man

#export PAGER="/bin/sh -c \"col -b | view -c 'set ft=man nomod nolist' -\"" 

# make less more friendly for non-text input files, see lesspipe(1)
if [ -x /usr/bin/lesspipe ]; then
  eval "$(lesspipe)"
fi

clear
