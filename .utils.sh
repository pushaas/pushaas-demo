#!/bin/bash

. .vars

#######################################
# input
#######################################
function waitEnter () {
  echo
  echo "(press Enter to confirm...)"
  read
}

#######################################
# prints
#######################################
function printScriptPart () {
  echo
  echo "This script will:"
}

function printUserPart () {
  echo
  echo "You should:"
}

function printItem () {
  local ITEM=$1
  echo "  - $ITEM"
}

function printSubitem () {
  local ITEM=$1
  echo "    - $ITEM"
}

function printUserPartContinue () {
  local ITEM=$(printItem "continue to the next script")
  echo "$ITEM"
}

#######################################
# vars
#######################################
function appName () {
  local APP_NAME="push-service-demo-$SUFFIX"
  echo "$APP_NAME"
}

function appAddress () {
  local APP_NAME=$(appName)
  local APP_ADDRESS=$(tsuru app-info -a $APP_NAME | grep "Address: " | awk -F " " '{print $2}' | xargs)
  echo "$APP_ADDRESS"
}

function appPort () {
  local APP_NAME=$(appName)
  local APP_PORT=$(tsuru app-info -a $APP_NAME | grep "| start" | awk -F "|" '{print $5}' | xargs)
  echo "$APP_PORT"
}

function serviceInstanceName () {
  local SERVICE_INSTANCE_NAME="push-$SUFFIX"
  echo "$SERVICE_INSTANCE_NAME"
}
