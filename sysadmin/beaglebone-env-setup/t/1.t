#!/bin/bash -eux
# Test the setup

die() { echo "$*" >&2; exit -1; }

[ -e /dev/beaglebone-serial ] || die "Beaglebone not plugged in"
cd
minicom
