#!/bin/sh

set -e

. .vars
APP_NAME="push-service-demo-$SUFFIX"

tsuru app-remove -a $APP_NAME -y
rm -fr push-service-demo-app
