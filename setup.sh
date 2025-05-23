#!/bin/sh

unifi_installer(){
  rm -fr /opt/docker/unifi-controller
  rm -fr /opt/docker/unifi-controller-db
  rm -fr /opt/docker-compose/unifi-controller

  sudo mv unifi-controller /opt/docker-compose

  sudo /opt/docker-compose/unifi-controller/docker compose up
}

unifi_installer