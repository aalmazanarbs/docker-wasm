#!/bin/bash

# Not neccesary to run always
#rustup target add wasm32-wasi

cargo build --target wasm32-wasi

docker build --platform wasi/wasm -t rust-wasm:latest .

echo -e "\nRunning Rust in Docker Wasm:\n"

docker run --rm --platform=wasi/wasm --runtime=io.containerd.wasmedge.v1 rust-wasm:latest
