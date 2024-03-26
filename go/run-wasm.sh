#!/bin/bash

GOOS=wasip1 GOARCH=wasm go build -o app.wasm

docker build --platform wasi/wasm -t go-wasm:latest .

echo -e "\nRunning Go in Docker Wasm:\n"

docker run --rm --platform=wasi/wasm --runtime=io.containerd.wasmedge.v1 go-wasm:latest
