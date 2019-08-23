#!/bin/sh

echo "Ok, your app does not work because some variables are missing to connect to the push service."
echo "Let's stop the app by now so it stops trying to run."
echo
echo "Press enter to continue..."
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-stop -a $APP_NAME
