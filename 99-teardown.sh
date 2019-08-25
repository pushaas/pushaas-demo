#!/bin/sh

set -e

. .vars
APP_NAME="push-service-demo-$SUFFIX"
SERVICE_INSTANCE_NAME="push-$SUFFIX"
COMMAND="tsuru service-instance-bind pushaas $SERVICE_INSTANCE_NAME -a $APP_NAME"

# tsuru service-instance-unbind pushaas $SERVICE_INSTANCE_NAME -a $APP_NAME --no-restart
# tsuru service-instance-remove pushaas $SERVICE_INSTANCE_NAME -y

# tsuru app-remove -a $APP_NAME -y
# rm -fr push-service-demo-app

# TODO uncomment
# tsuru logout
# tsuru target-remove pushaas-demo
