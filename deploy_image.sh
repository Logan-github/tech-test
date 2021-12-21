echo "Starting to deploy docker image.."
DOCKER_IMAGE=demo-app
CONTAINER_NAME=demo-app-nginx
docker pull $DOCKER_IMAGE
docker ps -q --filter ancestor=$DOCKER_IMAGE | xargs docker stop
docker container run --name $CONTAINER_NAME -p 80:80 -dit $DOCKER_IMAGE