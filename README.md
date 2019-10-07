# docker-grpc-typescript

Where `$cmd` is some `protoc` command with flags, and `$ROOT_DIR` is wherever you want to build from, run this to build a gRPC TypeScript (and JS) client.

```bash
docker run --rm -v $ROOT_DIR:/build/src/ -w=/build/src/ aybabtme/grpc-typescript $cmd
```

The `protoc` command might look like:

```bash
WEB_APP_GEN_DIR=src/gen
IDL_DIR=idl
protoc --js_out=import_style=commonjs,binary:$WEB_APP_GEN_DIR \
       --ts_out=service=true:$WEB_APP_GEN_DIR \
       -I /include/ \
       -I $IDL_DIR \
       *.proto
```

This will generate clients in `src/gen` if your protobuf files are in `idl/`.
