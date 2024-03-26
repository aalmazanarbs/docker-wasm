FROM scratch

COPY target/wasm32-wasi/debug/rust.wasm /app.wasm

ENTRYPOINT ["/app.wasm"]