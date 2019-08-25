#!/bin/sh

echo "This will create a demo app for you on the Tsuru cluster"
echo
echo "Press enter to continue..."
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"

tsuru app-create $APP_NAME nodejs -t developers -o theonepool -d 'An instance of the push-service-demo-app'

echo "You can now see your app with 'tsuru app-list' or 'tsuru app-info -a $APP_NAME'"
echo
