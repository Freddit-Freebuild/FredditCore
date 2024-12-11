#!/bin/bash

cd "$(dirname "$0")"

if [ -z "$1" ]; then
    echo "Usage: $0 <message>"
    exit 1
fi

# grep dedi_logs_channel_webhook from ../.config/.env-minecraft (ONLY the webhook)
if [ -f ../.config/.env-minecraft ]
then
  export $(cat ../.config/.env-minecraft | xargs)
fi

if [ -v DEDI_LOGS_CHANNEL_WEBHOOK ]; then
    curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"$1\"}" $DEDI_LOGS_CHANNEL_WEBHOOK
else
    echo "$1"
fi
