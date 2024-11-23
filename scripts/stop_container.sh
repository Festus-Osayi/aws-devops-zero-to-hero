#!/bin/bash
set -e

# Stop the running container (if any)
containerid=`docker ps | awk '{print$1}' | grep -v CONTAINER`
docker stop $containerid
docker rm $containerid
