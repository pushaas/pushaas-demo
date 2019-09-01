#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "cleanup your Tsuru app"
waitEnter

##################
# do
##################
set -e
APP_NAME=$(appName)
tsuru app-remove -a $APP_NAME -y
rm -fr push-service-demo-app

##################
# after
##################
printUserPart
printUserPartContinue
echo
