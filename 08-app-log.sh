#!/bin/bash

echo "The app was deployed. Let's check the logs"
echo "  - NOTE: no errors are expected this time"

echo
echo "(press enter...)"
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-log -a $APP_NAME -l 1000 | grep "checkEnv\|checkServices" | tail -n 8
