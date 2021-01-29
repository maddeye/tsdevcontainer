#!/bin/bash


if [ "$(docker images -q tsdebug)" = "" ]; then
  docker build -t tsdebug - < ./container/Dockerfile
fi
docker run --label "TSDebugContainer" --rm -v "$(pwd)":/app tsdebug:latest npm install && npm run $1