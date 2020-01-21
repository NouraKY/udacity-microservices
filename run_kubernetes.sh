#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nalyahya/mllocal

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run norahkub --image=nalyahya/mllocal --port=8000

# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward norahkub-5d6dbb997d-pf9nv 8000:80
