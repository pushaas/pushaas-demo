#!/bin/sh

echo "Your app is running, but with limited funcionality, since we have not started the Push Service yet."
echo

. .vars
APP_NAME="push-service-demo-$SUFFIX"
APP_PORT=$(tsuru app-info -a $APP_NAME | grep started | awk -F "|" '{print $5}' | xargs)

echo "Check your app at: http://$TSURU_POOL_IP:$APP_PORT"
echo
echo "(if you dont get an URL above, please assemble it yourself."
echo "Is the TSURU_POOL_IP var from the .vars file and your instance"
echo "port from \"tsuru app-info -a $APP_NAME\")"
