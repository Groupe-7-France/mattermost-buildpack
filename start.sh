#!/bin/bash

echo "start.sh"

/app/mattermost/bin/run

for i in 1 2 3 4 5
do
  echo "Looping ... number $i"
  curl get https://chat.ospharm.ph.fr:${PORT}/api/v4/system/ping
  sleep 10
done
