#!/bin/sh

echo "Now we wait for the service to go up. This script pings it with 1 second interval."
echo

. .vars

SERVICE_INSTANCE_NAME="push-$SUFFIX"

while true
do
  sleep 1
  STATUS_LINE=$(tsuru service-instance-info pushaas $SERVICE_INSTANCE_NAME | grep "Status: Service instance")
  echo $STATUS_LINE
  if [[ $STATUS_LINE == *"is pending"* ]]; then
    continue
  fi
  if [[ $STATUS_LINE == *"is up"* ]]; then
    echo "Service is up!"
    break
  fi
  if [[ $STATUS_LINE == *"is down"* ]]; then
    echo "Some problem happend. This is not expected behavior"
    break
  fi
done
