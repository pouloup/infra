#!/bin/bash

U_UID=$(id -u)
export U_UID

U_GID=$(id -g)
export U_GID

declare -a modules
modules=(
    # duckdns
    # photoprism
    # tailscale
    #dashy
    swag
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
