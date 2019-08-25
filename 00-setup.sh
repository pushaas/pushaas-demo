#!/bin/sh

clear

printf "Hello, welcome to the pushaas demo\n"
printf "\n"

if [ ! -f ".vars" ]; then
  printf "You did not create the '.vars' file, please read the instructions on README.md\n"
  exit 1
fi
. .vars

printf "Please read:\n"
printf "* make sure you have the Tsuru CLI installed. This demo was tested with version 1.7.1, but any 1.7 should be fine\n"
printf "* if you need to install it, please head to https://docs.tsuru.io/stable/using/install-client.html\n"
printf "* this setup will add a new Tsuru target and switch your CLI to this new target. The last script on this project will delete this target\n"
printf "* the credentials you've received to test this will be asked later, so you can be logged to this new Tsuru target\n"
printf "\n"

while true; do
  read -p "Do you have Tsuru CLI installed? (y/n) " yn
  case $yn in
    [Yy]* ) break;;
    * ) echo "Please install the CLI before we continue";;
  esac
done
printf "\n"

printf "Adding the new Tsuru target\n"
tsuru target-add pushaas-demo $TSURU_TARGET_URL -s
printf "\n"

printf "You will now login to the new Tsuru target. Enter the credentials you received\n"
tsuru login $USERNAME
printf "\n"

SUFFIX=$(hexdump -n 4 -v -e '/1 "%02X"' /dev/urandom | awk '{print tolower($0)}')
echo "SUFFIX=\"$SUFFIX\"" >> .vars

printf "Setup is done, please run the other scripts in order and follow the instructions they will output\n"
printf "\n"
