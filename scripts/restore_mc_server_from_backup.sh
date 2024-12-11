#! /bin/bash

cd "$(dirname "$0")"

_logging_script="$(pwd)/discord_logging_webhook.sh"

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <server, e.g. Survival> <backup_zip_file>"
    exit 1
fi

server_name="$1"
backup_zip_file="$2"

cd ../minecraft/servers

if [ ! -d "$server_name" ]; then
    echo "Server directory $server_name does not exist."
    exit 1
fi

if [ ! -f "../backups/$server_name/$backup_zip_file" ]; then
    echo "Backup file $backup_zip_file does not exist."
    exit 1
fi

bash "$_logging_script" "Starting restore for $server_name"

make -C "$server_name" stop
sleep 5
mv "$server_name" "${server_name}-old"
_success=$?
if [ $_success -ne 0 ]; then
    bash "$_logging_script" "Failed to move $server_name to ${server_name}-old"
    exit 1
fi

unzip "../backups/$server_name/$backup_zip_file" -d .
_success=$?
if [ $_success -ne 0 ]; then
    bash "$_logging_script" "Restore failed for $server_name"
    mv "${server_name}-old" "$server_name"
    exit 1
fi

bash "$_logging_script" "Restore complete for $server_name"
exit 0