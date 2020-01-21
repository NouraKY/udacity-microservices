#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=nalyahya/mllocal

# Step 2:  
# Authenticate & tag

docker login --username=nalyahya 
docker tag 292f2a768c75 nalyahya/mllocal:version1.0

echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push nalyahya/mllocal:latest

# Push image to a docker repository
