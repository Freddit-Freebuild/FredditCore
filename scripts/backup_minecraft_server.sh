#! /bin/bash

cd "$(dirname "$0")"

_logging_script="$(pwd)/discord_logging_webhook.sh"

if [ -z "$1" ]; then
    echo "Usage: $0 <server, e.g. Survival>"
    exit 1
fi

cd ../minecraft/backups/"$1"
ls -t | tail -n +5 | xargs -d '\n' rm -f
cd ../../servers

bash "$_logging_script" "Starting backup for $1"

COMMAND="save-off" make -C "$1" command
zipname="$1_$(date +"%Y-%m-%d_%H-%M").zip"
zip -r ../backups/"$1"/"$zipname" "$1"
_success=$?
COMMAND="save-on" make -C "$1" command

if [ $_success -ne 0 ]; then
    bash "$_logging_script" "Backup failed for $1"
    exit 1
fi

bash "$_logging_script" "Backup complete for $1"
exit 0
