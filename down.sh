#!/bin/bash

declare -a modules
modules=(
    # duckdns
    # photoprism
    # tailscale
    swag
    dashy
    bitwarden
    code-server
    gitea
    heimdall
    nextcloud
    pihole
    plex
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
