#!/bin/bash

declare -a modules
modules=(
    # dashy
    # duckdns
    # photoprism
    # tailscale
    bitwarden
    code-server
    docker-plex
    gitea
    heimdall
    nextcloud
    pihole
    portainer
    transmission
)

if [ $# -eq 0 ]
  then
    echo "No arguments supplied, shutdown all modules"
    for index in "${modules[@]}"
    do
        echo "shutdown module : $index"
        pushd "$index"
        docker-compose down
        popd
    done
else
    pushd "$1"
    docker-compose down
    popd
fi
