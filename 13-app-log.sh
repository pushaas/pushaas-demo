#!/bin/sh

echo "Let's check the logs again."
echo
echo "NOTE: the errors should not appear anymore (after the part of the logs where you see the restart)"
echo
echo "Press enter TWICE to continue..."
read
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"
tsuru app-log -a $APP_NAME -l 1000 -f
