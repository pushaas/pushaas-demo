#!/bin/sh

echo "Let's stop the app by now. We will re-start it later when the Push Service is running."
echo
echo "Press enter to continue..."
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-stop -a $APP_NAME
