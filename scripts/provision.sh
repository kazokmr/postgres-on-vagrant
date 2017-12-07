#!/usr/bin/env bash

timedatectl set-timezone Asia/Tokyo

yum -y install epel-release
yum -y install ansible
yum -y install vim

# install postgreSql Client
yum -y install postgresql

# start docker and autoEnabe
yum -y install docker
systemctl start docker.service
systemctl enable docker.service
docker run --name postgresql -p 5432:5432 -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres --restart=always -d postgres:9.6
