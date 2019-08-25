# pushaas-demo

This is a collection of simple scripts in order to demonstrate how the PushaaS system works.

Running these scripts only will work if a maintainer of PushaaS gives you sample credentials, so this is not intended for general audience.

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
git clone git@github.com:pushaas/pushaas-demo.git
cd pushaas-demo
```

1. create a file called `.vars` (already on `.gitignore`) and paste into it the first 3 environ variables you received (`TSURU_TARGET_URL`, `TSURU_POOL_IP` and `USERNAME`). You can paste `PASSWORD` if you want to keep it there, but it will not be used from the file, you will be asked later to type it manually.

1. run the scripts in this project in order (`00-...`, `01-...`, ...). Please read carefully the scripts outputs, they will guide you step-by-step on what to do

1. some steps expect error messages to be shown (like on your application log). When an error message is expected, the script will explicitly say so
