FROM alpine:3.8
RUN apk add protobuf nodejs npm && \
    npm install -g typescript ts-protoc-gen grpc-web-client google-protobuf @types/google-protobuf
ADD ["./include", "/include"]