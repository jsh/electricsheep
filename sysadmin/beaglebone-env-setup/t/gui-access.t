#!/bin/bash -eux
# check for ability to connect to remote device
# and to see its desktop

source testenv.sh

_testname adb access to device
adb shell date

_testname vnc access to gui
# start the remote vncserver
adb shell 'androidvncserver &'

# tunnel packets from host's VNC port to target's.
adb forward tcp:1509 tcp:1509

# Now bring up the UI

read -p "When vinagre comes up, use VNC protocol to connect to localhost:1509
(Press ENTER to continue) "

vinagre
