#!/bin/sh

# Default git commit number
GIT_COMMIT=unspecified
# Get current git commit number
LABEL=$(git log -1 --format=%h)
# Build docker of current directory
echo "Build docker image with label "$LABEL

docker build --build-arg PORT=$PORT --build-arg DATABASE_URL=$DATABASE_URL -t rnssolutions/pixelpulp-relayer:$LABEL .
