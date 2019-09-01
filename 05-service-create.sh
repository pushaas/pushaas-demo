#!/bin/bash

##################
# before
##################
. .utils.sh

set -e
SERVICE_INSTANCE_NAME=$(serviceInstanceName)
COMMAND="tsuru service-instance-add pushaas $SERVICE_INSTANCE_NAME small -t developers -d 'My push service instance'"

printScriptPart
printItem "create the Push Service instance"
printSubitem "this is the first (of two) commands needed to use the Push Service"
printSubitem "the command is: $COMMAND"
waitEnter

##################
# do
##################
bash -c "$COMMAND > /dev/null"

##################
# after
##################
printUserPart
printUserPartContinue
echo
