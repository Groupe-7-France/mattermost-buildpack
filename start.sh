#!/bin/bash

echo "start.sh"

/app/mattermost/bin/run

NEXT_WAIT_TIME=0
COMMAND_STATUS=1
until [ $COMMAND_STATUS -eq 0 || $NEXT_WAIT_TIME -eq 4 ]; do
  curl get https://chat.ospharm.ph.fr:${PORT}/api/v4/system/ping
  sleep $NEXT_WAIT_TIME
  let NEXT_WAIT_TIME=NEXT_WAIT_TIME+10
done