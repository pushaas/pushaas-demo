#!/bin/bash

set -e

. .vars
tsuru logout
tsuru target-remove pushaas-demo

if [ ! -z "$PREVIOUS_TARGET" ]; then
  tsuru target-set $PREVIOUS_TARGET
fi
