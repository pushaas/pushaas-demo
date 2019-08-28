#!/bin/bash

echo "Let's bind your Push Service instance to your app"
echo "  - this is the last (of two) commands to use the Push Service"
echo "  - this will define the vars your app needs"
echo

. .vars

APP_NAME="push-service-demo-$SUFFIX"
SERVICE_INSTANCE_NAME="push-$SUFFIX"
COMMAND="tsuru service-instance-bind pushaas $SERVICE_INSTANCE_NAME -a $APP_NAME"

echo "We will run:"
echo "$ $COMMAND"
echo
echo "(press enter...)"
read

bash -c "$COMMAND > /dev/null"
