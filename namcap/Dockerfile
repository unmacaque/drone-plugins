FROM alpine:3
ARG VERSION=3.2.10
ENV VERSION=${VERSION}
RUN apk update && \
    apk add --no-cache coreutils python3 py3-elftools pacman && \
    apk add --no-cache --virtual .build-deps py3-pip python3-dev gcc musl-dev pacman-dev && \
    pip3 install pyalpm && \
    pip3 install https://git.archlinux.org/namcap.git/snapshot/${VERSION}.tar.gz && \
    apk del --no-network .build-deps
WORKDIR /mnt
CMD [ "bash", "-c", "! grep '.' <(find . -name PKGBUILD | xargs -r -0 -n1 namcap 2>&1)" ]
