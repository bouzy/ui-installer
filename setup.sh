#!/bin/sh

docker_directory="/opt/docker/"
docker_compose_direcrtory="/opt/docker-compose"

docker_unifi_directory="/opt/docker/unifi-controller"
docker_unifi_db_directory="/opt/docker/unifi-controller-db"
docker_compose_unifi_directory="/opt/docker-compose/unifi-controller"

if [ -d "$docker_directory" ]; then
  echo $docker_directory
else
  sudo mkdir $docker_directory
fi

if [ -d "$docker_compose_directory" ]; then
  echo $docker_compose_direcrtory
else
  sudo mkdir $docker_compose_direcrtory
fi

if [ -d "$docker_unifi_directory" ]; then
  rm -fr $docker_unifi_directory
fi

if [ -d "$docker_unifi_db_directory" ]; then
  rm -fr $docker_unifi_db_directory
fi

if [ -d "$docker_compose_unifi_directory" ]; then
  rm -fr $docker_compose_unifi_directory
fi

sudo cp unifi-controller $docker_compose_direcrtory
sudo "$docker_compose_unifi_directory/docker compose up"