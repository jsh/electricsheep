#!/bin/bash -eux
# Set up a Java universe suitable for Android platform development.

default: java eclipse

eclipse:
	./get-eclipse

java:
	./get-java

test: java
	$(MAKE) -C t

.PHONY: default eclipse java test
