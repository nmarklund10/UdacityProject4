#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nmarklund10/udacity:housing-model

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run housing-model --image=$dockerpath --port=80 --labels app=housing-model

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward housing-model 8000:80
