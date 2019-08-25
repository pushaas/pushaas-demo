#!/bin/sh

echo "Let's start the app by now that the service is running and bound"
echo
echo "Press enter to continue..."
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-start -a $APP_NAME
