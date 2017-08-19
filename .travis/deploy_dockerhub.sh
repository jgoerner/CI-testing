#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
	TAG="latest"
else
	TAG="$TRAVIS_BRANCH"
fi
IMAGE_TAG="jgoerner/sentences" #hardcoded since renaming while in process
docker build -f Dockerfile -t $IMAGE_TAG:$TAG .
docker push $IMAGE_TAG
