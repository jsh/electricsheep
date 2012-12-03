# Create new udev rules for development
SHELL := /bin/bash
PATH := $(PATH):

/etc/udev/rules.d/% : %
	sudo cp $< $@

newrules := $(wildcard *.rules)
udevrules := $(addprefix /etc/udev/rules.d/, $(newrules))

default: $(udevrules) packages ~/.minirc.dfl

packages:
	get-packages

~/.minirc.dfl: minirc.dfl
	sudo cp $< $@
