#!/bin/bash

echo "Let's create a demo app on Tsuru (press enter...)"
echo
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"

set -e
tsuru app-create $APP_NAME nodejs -t developers -o theonepool -d 'An instance of the push-service-demo-app' > /dev/null

echo "App created: $APP_NAME"
