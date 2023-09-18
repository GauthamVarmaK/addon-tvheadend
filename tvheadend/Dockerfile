ARG BUILD_FROM
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

COPY requirements.txt /tmp/

RUN \
    apk update \
    && apk add --no-cache --virtual .build-deps \
        musl-dev=1.2.3-r4 \
        gcc=12.2.1_git20220924-r4 \
        g++=12.2.1_git20220924-r4 \
        libxml2-dev=2.10.3-r1 \
        libxslt-dev=1.1.37-r0 \
        python3-dev=3.10.10-r0 \
    && apk add --no-cache \
        tvheadend=4.2.8-r6 \
        oscam=1.20_svn20201119-r4 \
        py3-pip=22.3.1-r1 \
        libxslt=1.1.37-r0 \
    && pip3 install \
        --no-cache-dir \
        --prefer-binary \
        -r /tmp/requirements.txt \
    && apk del --no-cache --purge .build-deps

# Copy root filesystem
COPY rootfs /

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="afedchin <2063885+afedchin@users.noreply.github.com.>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="afedchin" \
    org.opencontainers.image.authors="afedchin <2063885+afedchin@users.noreply.github.com.>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/afedchin/addon-tvheadend" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
