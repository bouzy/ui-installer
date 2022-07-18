#!/bin/sh

# Basic installation

sudo docker run -d \
  --name=unifi-controller \
  --privileged \
  --restart=unless-stopped \
  -v /opt/docker/unifi:/config \
  --network=host \
  lscr.io/linuxserver/unifi-controller
