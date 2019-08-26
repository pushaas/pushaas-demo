#!/bin/sh

echo "Now we wait for the service to go up. This script will continously check the service status."
echo

. .vars

SERVICE_INSTANCE_NAME="push-$SUFFIX"

while true
do
  STATUS_LINE=$(tsuru service-instance-info pushaas $SERVICE_INSTANCE_NAME | grep "Status: Service instance")
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
    echo "Some problem happend. This is not expected behavior"
    break
  fi
done
