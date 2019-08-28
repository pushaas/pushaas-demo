#!/bin/bash

clear

printf "Hello, welcome to the pushaas demo\n"
printf "\n"

if [ ! -f ".vars" ]; then
  printf "You did not create the '.vars' file, please read the instructions on README.md\n"
  exit 1
fi
. .vars

printf "Please read:\n"
printf "* this demo needs Tsuru CLI installed (https://docs.tsuru.io/stable/using/install-client.html)\n"
printf "* this adds a new Tsuru target. The last scripts will delete this target\n"
printf "\n"

while true; do
  read -p "Only continue if you have Tsuru CLI installed. Continue? (y/n) " yn
  case $yn in
    [Yy]* ) break;;
    * ) echo "Please install the CLI before we continue";;
  esac
done
printf "\n"

printf "Adding the new Tsuru target\n"
tsuru target-add pushaas-demo $TSURU_TARGET_URL -s > /dev/null
printf "\n"

set -e
printf "Enter the password you received, to log to the new Tsuru target\nPassword: "
tsuru login $USERNAME > /dev/null
printf "\n"
printf "\n"

SUFFIX=$(hexdump -n 4 -v -e '/1 "%02X"' /dev/urandom | awk '{print tolower($0)}')
echo "" >> .vars
echo "SUFFIX=\"$SUFFIX\"" >> .vars

printf "Done! Run the other scripts in order and follow the instructions they will output\n"
