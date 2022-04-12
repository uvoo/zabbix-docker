#!/usr/bin/env bash
set -e
release=6.0.3-ubuntu
repo=uvoo/zabbix-server-pgsql
tag=$repo:${release}

echo $DOCKERHUB_TOKEN | docker login --username $DOCKERHUB_USERNAME --password-stdin
docker build --tag ${tag} .
docker push ${tag}
docker logout
