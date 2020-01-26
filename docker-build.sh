#!/usr/bin/env bash

IMAGE_LABEL="vagabond-build:$RANDOM"

# docker build
docker build -t $IMAGE_LABEL .

# dotnet build, test & nuget publish
docker run --rm \
           -e NUGET_KEY=$NUGET_KEY \
           $IMAGE_LABEL \
           ./build.sh "$@"
