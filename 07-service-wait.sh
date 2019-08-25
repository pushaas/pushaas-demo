#!/bin/sh

. .vars

SERVICE_INSTANCE_NAME="push-$SUFFIX"
COMMAND="tsuru service-instance-bind pushaas $SERVICE_INSTANCE_NAME -a $APP_NAME --no-restart"

tsuru service-instance-info pushaas $SERVICE_INSTANCE_NAME
