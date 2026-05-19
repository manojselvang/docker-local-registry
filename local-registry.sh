# Creating local registry in ubuntu AWS instance

docker run -dt --name local-registry -p 5000:5000 registry:2

# Pulling alpine image from Dockerhub

docker pull alpine:latest

# tag image pulled with local host path

docker tag alpine:latest localhost:5000/my-secure-alpine

# Push tagged image to local registry

docker push localhost:5000/my-secure-alpine

# Delete image from local machine (for testing if image pushed successfully to local registry

docker rmi localhost:5000/my-secure-alpine

# Check if image deleted

docker images

# Pull image from local registry

docker pull localhost:5000/my-secure-alpine

