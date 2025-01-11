#!/bin/bash
# usage: /app/mattermost/bin/run

export MM_SERVICESETTINGS_LISTENADDRESS="127.0.0.1:8065"

/app/mattermost/bin/mattermost
