#!/bin/bash

# Variables
CONTAINER_NAME=my_node_app
IMAGE_NAME=my_node_app_image

# Check if the container is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping and removing the running container..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Check if the image exists
if [ "$(docker images -q $IMAGE_NAME)" ]; then
    echo "Removing the existing image..."
    docker rmi $IMAGE_NAME
fi

# Build the new image
echo "Building the new image..."
docker build -t $IMAGE_NAME .

# Run the container
echo "Deploying the new container..."
docker run -d --name $CONTAINER_NAME -p 8080:8080 $IMAGE_NAME
