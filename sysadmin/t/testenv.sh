_testname() { echo == test: $*; }
die() { echo $* >&2; exit -1; }

trap '{ rm -rf $products; }' EXIT
trap '{ trap - EXIT; }' ERR
