#!/bin/bash

mvn clean package

docker build --platform wasi/wasm -t java-wasm:latest .

echo -e "\nRunning Java in Docker Wasm:\n"

docker run --rm --platform=wasi/wasm --runtime=io.containerd.wasmedge.v1 java-wasm:latest
