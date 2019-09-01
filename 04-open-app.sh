#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "show your app"
printSubitem "running with limited funcionality, because you have not started the Push Service yet"
waitEnter

##################
# do
##################
set -e
APP_NAME=$(appName)
APP_ADDRESS=$(appAddress)
APP_PORT=$(appPort)
echo "Check your app at http://$APP_ADDRESS (or http://$TSURU_POOL_IP:$APP_PORT)"

##################
# after
##################
printUserPart
printItem "open the link above on your browser:"
printSubitem "please disconnect your VPN or corporate network, or the app won't work"
printItem "test your demo app:"
printSubitem "open 2 windows, one at 'Read Articles', and one at 'Create Articles'"
printSubitem "create articles and notice how nothing updates in real time on the other window"
printUserPartContinue
echo
