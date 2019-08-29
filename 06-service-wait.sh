#!/bin/bash

echo "Wait for the service to go up"
echo "  - this should take 2-3 minutes."
echo

. .vars

SERVICE_INSTANCE_NAME="push-$SUFFIX"

while true
do
  STATUS_LINE=$(tsuru service-instance-info pushaas $SERVICE_INSTANCE_NAME | grep "Service instance")
  echo $STATUS_LINE
  if [[ $STATUS_LINE == *"is pending"* ]]; then
    sleep 10
    continue
  fi
  if [[ $STATUS_LINE == *"is up"* ]]; then
    echo "Service is up!"
    break
  fi
  if [[ $STATUS_LINE == *"is down"* ]]; then
    echo "Some problem happend. THIS IS NOT EXPECTED BEHAVIOR"
    break
  fi
done
