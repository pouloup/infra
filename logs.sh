#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied, please rtfm."
else
    pushd "$1"
    docker-compose logs -f
    popd
fi
