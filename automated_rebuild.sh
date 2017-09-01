#!/usr/bin/env bash
set -x

docker stop debcron
docker rm debcron
docker rmi debian-cron
docker build -t debian-cron .
docker run -i -d --name debcron debian-cron
