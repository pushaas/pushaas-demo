#!/bin/bash

echo "The app was deployed. Let's check the logs"
echo "  - NOTE: the logs will show some errors on the application. THIS IS EXPECTED"
echo "  - these errors will be solved when you create and bind a Push Service instance to your app"
echo
echo "(press enter...)"
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-log -a $APP_NAME -l 1000 | grep "checkEnv\|checkServices" | tail -n 8
