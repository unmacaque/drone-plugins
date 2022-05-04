FROM alpine:3.15
RUN apk update && \
    apk add --no-cache nodejs npm && \
    npm install --global markdownlint-cli && \
    npm cache clean --force
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
