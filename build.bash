#!/usr/bin/env bash

podman build . -t quay.io/andrewazores/proxy-test:latest -f Containerfile
podman image prune -f
