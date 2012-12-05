#!/bin/bash -eux
# Test the setup

source testenv.sh

_testname beaglebone plugged in
[ -e /dev/beaglebone-serial ]

_testname beaglebone-accessible via minicom
cd
minicom
