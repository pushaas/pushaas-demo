#!/bin/sh

echo "This will clone https://github.com/pushaas/push-service-demo-app and deploy it to your Tsuru app"
echo
echo "Press enter to continue..."
read

. .vars
APP_NAME="push-service-demo-$SUFFIX"

rm -fr push-service-demo-app
git clone https://github.com/pushaas/push-service-demo-app.git
cd push-service-demo-app && git pull && tsuru app-deploy -a $APP_NAME .
