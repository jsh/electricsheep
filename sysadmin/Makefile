# miscellaneous sysadmin actions to make my life easier

SHELL := /bin/bash

default: vim-gnome apt-synch bash_local

vim-gnome:
	sudo apt-get install vim-gnome
	[ -f ~/.vimrc ] || ln vimrc ~/.vimrc

/usr/local/sbin/apt-synch: apt-synch
	sudo ln $< $@

bash_local:
	$(MAKE) -C bash_local

.PHONY: bash_local vim-gnome

