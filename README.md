# pushaas-demo

This is a collection of simple scripts in order to demonstrate how the PushaaS system works.

Running these scripts only will work if a maintainer of PushaaS gives you sample credentials, so this is not intended for general audience.

## overview

Following this demo, you will:
- create an application on Tsuru and deploy some code to your application
- test the application working *without* the Push Service
- create a Push Service instance and bind it to your application
- test the application working *with* the Push Service
- (hopefully) destroy all created resources


## running the demo

1. who is invited to run the demo will receive some environment variables like the following:

```shell
TSURU_TARGET_URL="<some url>"
TSURU_POOL_IP="<some ip>"
USERNAME="<some username>"
PASSWORD="<some password>"
```

1. clone this repository:

```shell
git clone https://github.com/pushaas/pushaas-demo.git
cd pushaas-demo
touch .vars
```

1. the previous step created a file called `.vars` (already on `.gitignore`). Paste into it the first 3 environment variables you received (`TSURU_TARGET_URL`, `TSURU_POOL_IP` and `USERNAME`). Do not paste the `PASSWORD`, you will be asked later to type it manually.

1. run the scripts in this project in order (`00-...`, `01-...`, ...). Please read carefully the scripts outputs, they will guide you step-by-step on what to do

1. in case you need to re-run, run from the `00-setup.sh` script, in order to generate a new suffix for your app and services and avoid clashing. NOTE: this would be exceptional behavior, it is not expected that you need to re-run

1. NOTE: some steps expect error messages to be shown (like on your application log). When an error message is expected, the script will explicitly say so

1. NOTE: the scripts `10-service-create.sh` and `12-service-bind.sh` will output commands for you to run, instead of running themselves. This is because these are the only 2 commands specific to the Push Service, so when using Push Service in practice these are the only commands you would need to create and bind an instance to your application
