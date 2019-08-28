#!/bin/bash

echo "The app is running with full funcionality"
echo

. .vars
APP_NAME="push-service-demo-$SUFFIX"
APP_PORT=$(tsuru app-info -a $APP_NAME | grep "| start" | awk -F "|" '{print $5}' | xargs)

echo "Check your app: http://$TSURU_POOL_IP:$APP_PORT"
echo
