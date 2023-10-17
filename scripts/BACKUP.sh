#! /bin/bash

cd "$(dirname "$0")"

if [ $# -lt 2 ]; then
    echo "Usage: $0 backup_list target_dir"
    exit 1
fi

backup_list=$1
target_dir=$2

NUMBER_OF_BACKUPS_TO_KEEP=5

cd $target_dir
ls -1t | tail -n +$NUMBER_OF_BACKUPS_TO_KEEP | xargs rm
cd "$(dirname "$0")/.."

zipname="$(date +"%Y-%m-%d_%H-%M").zip"


post_status () {
    if [ -v BACKUPS_STAFF_CHANNEL_WEBHOOK ]; then
        curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"$1\"}" $BACKUPS_STAFF_CHANNEL_WEBHOOK
    else
        echo "$1"
    fi
}

backup_output_file="$target_dir/$zipname"

num_files=$(wc -l < "$backup_list")
i=0
while read -r line; do
    post_status "Adding \`$line\` to backup... ($((++i))/$num_files)"
    if zip -ur "$backup_output_file" "$line" -eq; then
        continue
    else
        if [ $? -e 130]; then
            post_status "Backup interrupted."
            exit 1
        else
            post_status "Failed to add \`$line\` to backup"
        fi
    fi
done < "$backup_list"

post_status "Backup complete."

exit 0
