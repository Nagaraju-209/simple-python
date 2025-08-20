#!/bin/bash
set -e

# Find container using port 5000 and stop it
container_id=$(docker ps --filter "publish=5000" --format "{{.ID}}")
if [ -n "$container_id" ]; then
  echo "Stopping container using port 5000: $container_id"
  docker stop "$container_id"
fi
