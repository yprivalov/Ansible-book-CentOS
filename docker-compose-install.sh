#!/bin/bash

# install docker

yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce
systemctl enable docker.service
systemctl start docker.service

# install docker-compose

yum install epel-release
yum install -y python-pip
pip install docker-compose
yum upgrade python*
docker-compose version
