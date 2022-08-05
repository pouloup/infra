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
