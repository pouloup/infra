#!/bin/bash

source ./env.sh

if [ -z "$U_UID" ] || [ -z "$U_GID" ]; then
    echo "Env file misbehaving, please check."
    exit 1
fi

declare -a modules
modules=(
    # duckdns
    # photoprism
    # tailscale
    swag
    bitwarden
    code-server
    dashy
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
    echo "No arguments supplied, re.starting all modules"
    for index in "${modules[@]}"
    do
        echo "re.starting module : $index"
        pushd "$index"
        docker-compose restart
        popd
    done
else
    pushd "$1"
    docker-compose restart
    popd
fi
