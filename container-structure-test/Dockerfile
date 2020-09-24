FROM alpine:3
ADD https://storage.googleapis.com/container-structure-test/v1.9.0/container-structure-test-linux-amd64 /usr/local/bin/container-structure-test
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/*
ENTRYPOINT [ "entrypoint.sh" ]
