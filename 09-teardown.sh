#!/bin/sh

. .vars
APP_NAME="push-service-demo-$SUFFIX"

# TODO unbind and remove service

tsuru app-remove -a $APP_NAME -y
rm -fr push-service-demo-app

# TODO uncomment
# tsuru logout
# tsuru target-remove pushaas-demo
