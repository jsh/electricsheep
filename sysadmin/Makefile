# miscellaneous sysadmin actions to make my life easier

SHELL := /bin/bash

default: vim-gnome apt-synch

vim-gnome:
	sudo apt-get install vim-gnome
	[ -f ~/.vimrc ] || ln vimrc ~/.vimrc

/usr/local/sbin/apt-synch: apt-synch
	sudo ln $< $@

.PHONY: vim-gnome

