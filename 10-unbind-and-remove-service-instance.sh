#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "cleanup your service instance"
waitEnter

##################
# do
##################
set -e
APP_NAME=$(appName)
SERVICE_INSTANCE_NAME=$(serviceInstanceName)
tsuru service-instance-unbind pushaas $SERVICE_INSTANCE_NAME -a $APP_NAME --no-restart
tsuru service-instance-remove pushaas $SERVICE_INSTANCE_NAME -y

##################
# after
##################
printUserPart
printUserPartContinue
echo
