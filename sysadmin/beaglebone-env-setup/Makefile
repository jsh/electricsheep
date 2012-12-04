# Create new udev rules for development
SHELL := /bin/bash
PATH := $(PATH):

/etc/udev/rules.d/% : %
	sudo cp $< $@

newrules := $(wildcard *.rules)
udevrules := $(addprefix /etc/udev/rules.d/, $(newrules))

default: install_udevrules minicom_setup bootstrap_card

install_udevrules: $(udevrules)
	sudo udevadm control --reload-rules

bootstrap_card:
	bootstrapbone

minicom_setup: ~/.minirc.dfl
	type minicom || sudo apt-get install minicom

~/.minirc.dfl: minirc.dfl
	sudo cp $< $@

test:
	make -C t
