# pushaas-demo

Scripts to demonstrate the PushaaS system.

Not intended for general audience, only will work if a maintainer of PushaaS gives you sample credentials.


## overview

This demo:
- creates an app on Tsuru and deploy some code to your app
- tests the app working **without** the Push Service
- creates a Push Service instance and bind it to your app
- tests the app working **with** the Push Service
- destroys all created resources


## running the demo

1. you will receive from the maintainer these variables:

  ```shell
  TSURU_TARGET_URL="<some url>"
  TSURU_POOL_IP="<some ip>"
  USERNAME="<some username>"
  PASSWORD="<some password>"
  ```

1. clone this repo:

  ```shell
  git clone https://github.com/pushaas/pushaas-demo.git
  cd pushaas-demo
  ```

1. create a file called `.vars`. Paste into it the first 3 environment variables you received (`TSURU_TARGET_URL`, `TSURU_POOL_IP` and `USERNAME`). You will be asked later to type `PASSWORD` manually.

  ```
  touch .vars
  ```

1. run the scripts in this project in order (`00-...`, `01-...`, ...). **Please read carefully the scripts outputs**, they will guide you step-by-step on what to do.

1. in case of an unexpected error, contact a maintainer.

1. NOTE: **some errors are expected** (on your application log). When an error message is expected, the script will explicitly say so.

1. NOTE: the scripts:
  - `05-service-create.sh`
  - `07-service-bind.sh`

  **will output commands for you to run, instead of running themselves**. This is because these are the only 2 commands specific to the Push Service, se you will run them to better understand what is specific to the Push Service.
