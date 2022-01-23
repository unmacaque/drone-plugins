FROM alpine:3.14
ARG PYALPM_VERSION=0.9.2
ARG NAMCAP_VERSION=3.2.10
RUN apk update && \
    apk add --no-cache coreutils python3 py3-elftools pacman && \
    apk add --no-cache --virtual .build-deps py3-pip py3-pkgconfig py3-wheel python3-dev gcc musl-dev pacman-dev && \
    pip3 install pyalpm==${PYALPM_VERSION} && \
    pip3 install https://gitlab.archlinux.org/pacman/namcap/-/archive/${NAMCAP_VERSION}/namcap-${NAMCAP_VERSION}.tar.gz && \
    apk del --no-network .build-deps && \
    mkdir -p /usr/share/namcap
ADD https://gitlab.archlinux.org/pacman/namcap/-/raw/${NAMCAP_VERSION}/namcap-tags \
    https://gitlab.archlinux.org/pacman/namcap/-/raw/${NAMCAP_VERSION}/parsepkgbuild.sh \
    /usr/share/namcap/
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]
