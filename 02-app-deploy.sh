#!/bin/bash

echo "Let's:"
echo "  - clone the code https://github.com/pushaas/push-service-demo-app"
echo "  - deploy it to your Tsuru app"
echo
echo "(press enter...)"
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"

rm -fr push-service-demo-app
git clone https://github.com/pushaas/push-service-demo-app.git
cd push-service-demo-app && git pull && tsuru app-deploy -a $APP_NAME .
