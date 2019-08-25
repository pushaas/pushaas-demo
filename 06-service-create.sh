#!/bin/sh

echo "Now let's create the Push Service instance"
echo
echo "So far, no commands were related to the pushaas."
echo "This is the first (of two) commands needed to use the Push Service instance"
echo
echo "Because of this, you will run the command yourself. Please run the following:"
echo

. .vars

COMMAND="tsuru service-instance-add pushaas push-${SUFFIX} small -t developers -d 'My push service instance'"

echo "$ $COMMAND"
