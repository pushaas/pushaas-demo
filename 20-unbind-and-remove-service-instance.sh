#!/bin/sh

set -e

. .vars
APP_NAME="push-service-demo-$SUFFIX"
SERVICE_INSTANCE_NAME="push-$SUFFIX"

tsuru service-instance-unbind pushaas $SERVICE_INSTANCE_NAME -a $APP_NAME --no-restart
tsuru service-instance-remove pushaas $SERVICE_INSTANCE_NAME -y
