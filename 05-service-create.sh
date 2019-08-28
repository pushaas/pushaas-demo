#!/bin/bash

echo "Let's create the Push Service instance"
echo "  - this is the first (of two) commands needed to use the Push Service"
echo

. .vars


SERVICE_INSTANCE_NAME="push-$SUFFIX"
COMMAND="tsuru service-instance-add pushaas $SERVICE_INSTANCE_NAME small -t developers -d 'My push service instance'"

echo "We will run:"
echo "$ $COMMAND"
echo
echo "(press enter...)"
read

bash -c "$COMMAND > /dev/null"
