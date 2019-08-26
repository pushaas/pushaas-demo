#!/bin/sh

set -e

tsuru logout
tsuru target-remove pushaas-demo
