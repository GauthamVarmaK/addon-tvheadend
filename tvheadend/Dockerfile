ARG BUILD_FROM
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

COPY requirements.txt /tmp/

RUN \
    apk update \
    && apk add --no-cache --virtual .build-deps \
        musl-dev=1.2.4-r2 \
        gcc=12.2.1_git20220924-r10 \
        g++=12.2.1_git20220924-r10 \
        libxml2-dev=2.11.6-r0 \
        libxslt-dev=1.1.38-r0 \
        python3-dev=3.11.6-r0 \
    && apk add --no-cache \
        tvheadend=4.2.8-r6 \
        py3-pip=23.1.2-r0 \
        libxslt=1.1.38-r0 \
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
    maintainer="Daniel Figus <10271668+dfigus@users.noreply.github.com>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="dfigus" \
    org.opencontainers.image.authors="Daniel Figus <10271668+dfigus@users.noreply.github.com>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/dfigus/addon-tvheadend" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
