#!/bin/bash

pushd /home/pi/infra
    for image in $(docker images --format "{{.Repository}}:{{.Tag}}" | grep -v '<none>')
    do
        docker pull $image >> docker_pull.log 2>&1
    done
    ./run.sh >> watchtower.log 2>&1
popd
