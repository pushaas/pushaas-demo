#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "show your application logs"
printSubitem "errors are expected and will be solved when you create and bind a Push Service instance to your app"
waitEnter

##################
# do
##################
set -e
APP_NAME=$(appName)
tsuru app-log -a $APP_NAME -l 1000 | grep "checkEnv\|checkServices" | tail -n 8

##################
# after
##################
printUserPart
printItem "read the logs above (knowing that the errors are expected)"
printUserPartContinue
echo
