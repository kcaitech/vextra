#!/bin/bash

ymls='-f docker-compose.yaml'

cmd=$1
if [ "$cmd" = "down" ] || [ "$cmd" = "reset" ]; then
    docker-compose ${ymls} down
fi

if [ "$cmd" = "up" ] || [ "$cmd" = "reset" ]; then
    net=$(docker network ls | grep kcserver | awk '{print $2}')
    if [ "$net" != "kcserver" ]; then
        docker network create kcserver
    fi
    docker-compose ${ymls} up -d
fi

if [ "$cmd" != "up" ] && [ "$cmd" != "down" ] && [ "$cmd" != "reset" ]; then
    echo "Usage: $0 [up|down|reset]"
    exit 1
fi