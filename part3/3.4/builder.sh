#!/bin/bash
gh_repo="$1"
folder="${gh_repo##*/}"
docker_repo="$2"
git clone "https://github.com/$gh_repo"
cd $folder
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker build -t $docker_repo .
docker push $docker_repo

