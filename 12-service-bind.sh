#!/bin/sh

echo "Now let's bind your Push Service instance to your app"
echo
echo "This is the second and last command needed to use the Push Service instance."
echo "Running this command will define the environment variables that your app needs"
echo "to connect the the Push Service."
echo
echo "Please run the following:"
echo

. .vars

APP_NAME="push-service-demo-$SUFFIX"
SERVICE_INSTANCE_NAME="push-$SUFFIX"
COMMAND="tsuru service-instance-bind pushaas $SERVICE_INSTANCE_NAME -a $APP_NAME"

echo "$ $COMMAND"
echo
echo "After the bind is done, the app will restart automatically and the required"
echo "environment variables will be present (set by Tsuru after the bind)."
