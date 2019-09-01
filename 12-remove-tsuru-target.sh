#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "cleanup the demo target on your Tsuru CLI"
waitEnter

##################
# do
##################
set -e
tsuru logout
tsuru target-remove pushaas-demo

if [ ! -z "$PREVIOUS_TARGET" ]; then
  tsuru target-set $PREVIOUS_TARGET
fi

##################
# after
##################
echo
echo "The demo is done!"
echo
