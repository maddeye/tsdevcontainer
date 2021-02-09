#!/bin/bash


if [ "$(docker images -q tsdebug)" = "" ]; then
  docker build -t tsdebug - < ./container/Dockerfile
fi
docker run --label "TSDebugContainer" --rm -v "$(pwd)":/app tsdebug:latest sh -c "npm i && npm run $1"
