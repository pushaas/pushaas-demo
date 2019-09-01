#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "clone the code https://github.com/pushaas/push-service-demo-app"
printItem "deploy the code to your Tsuru app"
printSubitem "this will take 3-4 minutes"
waitEnter

##################
# do
##################
set -e
APP_NAME=$(appName)
rm -fr push-service-demo-app
git clone https://github.com/pushaas/push-service-demo-app.git
cd push-service-demo-app
tsuru app-deploy -a $APP_NAME .

##################
# after
##################
printUserPart
printUserPartContinue
echo
