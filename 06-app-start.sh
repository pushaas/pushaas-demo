#!/bin/sh

echo "Now the service is running and the required variables were set on your app."
echo "Let's start it again and hope all goes well this time."
echo
echo "Press enter to continue..."
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-stop -a $APP_NAME
