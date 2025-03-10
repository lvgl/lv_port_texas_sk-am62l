#!/bin/bash

# Get the directory of the current script and move to the parent directory 
# where Dockerfile is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NATIVE_BUILD_DIR="$(dirname "$SCRIPT_DIR")"
ROOT_DIR="$(dirname "$NATIVE_BUILD_DIR")"
cd "$NATIVE_BUILD_DIR"

# Check if the correct argument is passed
if [[ "$1" == "--create-image" ]]; then
    echo "Building the Docker container..."
    docker build -t lvgl-build-arm64-image-am62l-native . 

elif [[ "$1" == "--build-app" ]]; then
    echo "Running the Docker container..."
    docker run --rm -v $ROOT_DIR:/app lvgl-build-arm64-image-am62l-native

else
    echo "Usage: $0 --create-image or --build-app"
    exit 1
fi
