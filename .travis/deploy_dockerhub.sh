#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
	TAG="latest"
else
	TAG="$TRAVIS_BRANCH"
fi
TRAVIS_REPO_SLUG_LOWERCASE=$(echo $TRAVIS_REPO_SLUG | tr '[:upper:]' '[:lower:]')
docker build -f Dockerfile -t $TRAVIS_REPO_SLUG_LOWERCASE:$TAG .
docker push $TRAVIS_REPO_SLUG_LOWERCASE
