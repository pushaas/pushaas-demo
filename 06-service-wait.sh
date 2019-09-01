#!/bin/bash

##################
# before
##################
. .utils.sh
printScriptPart
printItem "wait for the service instance to go up"
printSubitem "it should take 2-3 after you run the script that created the service instance"
waitEnter

##################
# do
##################
set -e
SERVICE_INSTANCE_NAME=$(serviceInstanceName)

while true
do
  STATUS_LINE=$(tsuru service-instance-info pushaas $SERVICE_INSTANCE_NAME | grep "Service instance")
  echo $STATUS_LINE
  if [[ $STATUS_LINE == *"is pending"* ]]; then
    sleep 10
    continue
  fi
  if [[ $STATUS_LINE == *"is up"* ]]; then
    ##################
    # after
    ##################
    echo "Service is up!"
    printUserPart
    printUserPartContinue
    break
  fi
  if [[ $STATUS_LINE == *"is down"* ]]; then
    ##################
    # after
    ##################
    echo "Some problem happend. THIS IS NOT EXPECTED BEHAVIOR"
    printUserPart
    printItem "contact the PushaaS maintainer"
    break
  fi
done
