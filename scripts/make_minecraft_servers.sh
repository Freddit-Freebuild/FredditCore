#! /bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 make_target [command]"
    exit 1
fi

if [ -f ../.config/.env ]
then
  export $(cat ../.config/.env | xargs)
fi

cd "$(dirname "$0")"
cd ../minecraft/servers

for server in $MINECRAFT_SERVERS; do
    cd "$server"
    if [ "$1" == "command" ]; then
        COMMAND="$2" make "$1"
    else
        make $1
    fi
    cd ..
done
exit 0
