#!/bin/sh

# Basic installation

sudo docker run -d \
  --name=unifi-controller \
  --privileged \
  --restart=unless-stopped \
  -v /home/eldon/docker/unifi:/config \
  --network=host \
  lscr.io/linuxserver/unifi-controller