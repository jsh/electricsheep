# Local bash customization

SHELL := /bin/bash
BASHFILES := $(basename $(addprefix ~/.bash_local/,$(wildcard *.ex)))

$(HOME)/.bash_local/% : %.ex
	[ -d $(HOME)/.bash_local ] || mkdir $(HOME)/.bash_local
	ln $< $@

default: $(BASHFILES) ~/.bashrc

~/.bashrc: customize-bash.txt
	if ! grep -q .bash_local $@; then cat $< >> $@; fi

.PHONY: default
