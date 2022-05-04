FROM alpine:3.15
ARG VERSION=v1.11.0
ADD https://storage.googleapis.com/container-structure-test/${VERSION}/container-structure-test-linux-amd64 /usr/local/bin/container-structure-test
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
