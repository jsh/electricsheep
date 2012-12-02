#!/bin/bash -eux

javac HelloWorld.java
if java HelloWorld | diff - <(echo 'Hello World!'); then
  echo Success
  rm HelloWorld.class
  exit 0
else
  echo Fail
  exit -1
fi
