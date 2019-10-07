FROM alpine:3.10
RUN apk add protobuf nodejs npm bash git && \
    npm install -g typescript ts-protoc-gen grpc-web-client google-protobuf @types/google-protobuf
ADD ["./include", "/include"]