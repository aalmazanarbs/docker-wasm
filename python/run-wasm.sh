#!/bin/bash

docker build --platform wasi/wasm -t python-wasm:latest .

docker run -d --platform=wasi/wasm --runtime=io.containerd.wasmedge.v1 -p 3000:3000 python-wasm:latest
