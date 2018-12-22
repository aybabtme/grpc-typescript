# grpc-typescript

Where `$cmd` is some `protoc` command with flags, and `$ROOT_DIR` is wherever you want to build from, run this to build a gRPC TypeScript (and JS) client.

```
docker run --rm -v $ROOT_DIR:/build/src/ -w=/build/src/ aybabtme/grpc-typescript $cmd
```
