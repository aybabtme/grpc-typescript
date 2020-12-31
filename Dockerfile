FROM alpine:3.12
RUN apk add protobuf nodejs npm bash git && \
    npm install -g typescript ts-protoc-gen @improbable-eng/grpc-web google-protobuf @types/google-protobuf
ADD ["./include", "/include"]