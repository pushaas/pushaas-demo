#!/bin/bash

##################
# before
##################
. .utils.sh

set -e
APP_NAME=$(appName)
SERVICE_INSTANCE_NAME=$(serviceInstanceName)
COMMAND="tsuru service-instance-bind pushaas $SERVICE_INSTANCE_NAME -a $APP_NAME"

printScriptPart
printItem "bind your Push Service instance to your app"
printSubitem "this is the last (of two) commands to use the Push Service"
printSubitem "this will define the vars your app needs and restart the app"
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
