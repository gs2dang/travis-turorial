docker build -t $DOCKER_USERNAME/$REPO_NAME .
echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin
chmod +x bin/docker_push.sh
docker push $DOCKER_USERNAME/$REPO_NAME:latest
