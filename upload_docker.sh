#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=nmarklund10/udacity:housing-model

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username nmarklund10
docker tag housing-model:latest nmarklund10/udacity:housing-model

# Step 3:
# Push image to a docker repository
docker push nmarklund10/udacity:housing-model