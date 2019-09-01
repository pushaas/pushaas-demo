#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "create a demo app on Tsuru"
waitEnter

##################
# do
##################
set -e
APP_NAME=$(appName)
tsuru app-create $APP_NAME nodejs -t developers -o theonepool -d 'An instance of the push-service-demo-app' > /dev/null

##################
# after
##################
printUserPart
printUserPartContinue
echo
