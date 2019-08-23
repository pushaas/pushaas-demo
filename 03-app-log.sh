#!/bin/sh

echo "The app was deployed on the previous step. Now let's check the logs"
echo "NOTE: the logs will show an error on the application. THIS IS EXPECTED."
echo "The error points that some variables are not defined. These variables will"
echo "be set by Tsuru later when we create and bind our Push Service instance."
echo
echo "Press enter TWICE to continue..."
read
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-log -a $APP_NAME -l 100 -f
