#!/bin/sh

echo "The app was deployed on the previous step. Now let's check the logs."
echo
echo "NOTE: the logs will show some errors on the application. THIS IS EXPECTED."
echo
echo "Look for the logs with [checkEnv] and [checkServices]:"
echo "* [checkEnv] reports errors because the variables the app need to connect to Push Service are not defined"
echo "* [checkServices] reports errors because the Push Service the app relies on is not up and running"
echo
echo "Both errors will be solved later when you create and bind a Push Service instance to your app."
echo
echo "Press enter TWICE to continue..."
read
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-log -a $APP_NAME -l 1000 -f
