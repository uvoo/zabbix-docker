#!/usr/bin/env bash
set -e
release=6.0.3-ubuntu
repo=uvoo/zabbix-server-pgsql
tag=${repo}:${release}
echo "Build and push docker container to Dockerhub."
docker build --tag ${tag} .
echo $DOCKERHUB_USERTOKEN | docker login --username $DOCKERHUB_USERNAME --password-stdin
docker push ${tag}
docker logout
