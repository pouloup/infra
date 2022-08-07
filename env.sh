#!/bin/bash

U_UID=$(id -u)
export U_UID

U_GID=$(id -g)
export U_GID

declare -a modules
modules=(
    # duckdns
    # tailscale
    # dashy
    swag
    bitwarden
    code-server
    gitea
    heimdall
    nextcloud
    photoprism
    pihole
    plex
    portainer
    transmission
)
