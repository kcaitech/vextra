#!/bin/sh

mkdir -p /app/log

auto_restart() {
    while true; do
        eval "$1" 2>&1
        sleep 5
    done
}

(auto_restart "node /app/dist/server.mjs --port 30000" & auto_restart "/app/kcserver") | tee -a /app/log/all.log
