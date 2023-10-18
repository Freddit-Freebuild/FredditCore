#! /bin/bash

cd "$(dirname "$0")"

screens=(
    "minecraft-server-Freebuild"
    "anonventbot"
)

all_present=true

for screen in "${screens[@]}"; do
    if ! screen -list | grep -q "$screen"; then
        echo "❌ Screen $screen not found"
        all_present=false
    else 
        echo "✔ Screen $screen found"
    fi
done

echo

if $all_present; then
    echo "✔ All screens found"
    exit 0
else
    echo "❌ Not all screens found"
    exit 1
fi
