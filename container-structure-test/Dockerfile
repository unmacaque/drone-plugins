FROM alpine:3
ARG VERSION=v1.10.0
ENV VERSION=${VERSION}
ADD https://storage.googleapis.com/container-structure-test/${VERSION}/container-structure-test-linux-amd64 /usr/local/bin/container-structure-test
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*
ENTRYPOINT [ "entrypoint.sh" ]
