#!/bin/sh

echo "Let's check the logs"
echo "NOTE: now it is expected that the error about the missing variables won't show up anymore"
echo
echo "Press enter TWICE to continue..."
read
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-log -a $APP_NAME -l 100 -f
