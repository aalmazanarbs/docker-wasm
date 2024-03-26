#!/bin/bash

set -e

cd go

./run-wasm.sh

cd ../java

./run-wasm.sh

cd ../rust

./run-wasm.sh

