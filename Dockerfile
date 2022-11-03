FROM golang:1.16-bullseye as builder

ENV GOOS=linux GOARCH=amd64 CGO_ENABLED=0

ARG VERSION=latest
RUN go install github.com/GoogleCloudPlatform/protoc-gen-bq-schema@${VERSION}

FROM scratch

# Runtime dependencies
LABEL "build.buf.plugins.runtime_library_versions.0.name"="google.golang.org/protobuf"
LABEL "build.buf.plugins.runtime_library_versions.0.version"="v1.28.0"

COPY --from=builder /go/bin /

ENTRYPOINT ["/protoc-gen-bq-schema"]
