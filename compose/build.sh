#!/bin/bash
#
# Purpose: Jogar a imagem no dockerhub
#
# Author: Victor Arnaud <victorhad@gmail.com>

sudo docker login --username $DOCKER_HUB_USER --password $DOCKER_HUB_PASS
sudo docker-compose build
sudo docker-compose push
