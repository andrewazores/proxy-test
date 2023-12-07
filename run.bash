#!/usr/bin/env bash

PORT=${PORT:-7878}

podman run --rm \
    --name proxy-test \
    --publish "${PORT}:${PORT}" \
    --env HOSTNAME="${HOSTNAME:-localhost}" \
    --env ROOT_PATH="/test/" \
    --env PORT="${PORT}" \
    --env SVC_HOST="${SVC_HOST:-$(hostname)}" \
    --env SVC_PORT="${SVC_PORT:-8181}" \
    --env UPSTREAM="${UPSTREAM:-https://svc/}" \
    quay.io/andrewazores/proxy-test:latest
