#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "show your application logs"
printSubitem "no errors are expected this time"
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
printItem "read the logs above"
printUserPartContinue
echo
