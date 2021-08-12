ARG BUILD_FROM=ghcr.io/hassio-addons/base/amd64:10.0.1
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

COPY run.sh /run.sh
RUN chmod +x /run.sh
RUN /run.sh

RUN echo "Starting TVHeadend"
ENTRYPOINT ["/usr/bin/tvheadend", "--firstrun", "-u", "root", "-g", "root", "-c", "/config/tvheadend"]

# Labels
LABEL \
    io.hass.name="TVHeadend" \
    io.hass.description="TVHeadend Add-On" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="https://github.com/GauthamVarmaK" \
    org.label-schema.description="TVHeadend Home Assistant Add-On" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="TVHeadend" \
    org.label-schema.name="Home Assistant Addon: TVHeadend ${BUILD_ARCH}" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.url="https://github.com/GauthamVarmaK/addon-tvheadend" \
    org.label-schema.usage="https://github.com/GauthamVarmaK/addon-tvheadend" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/GauthamVarmaK/addon-tvheadend" \
    org.label-schema.vendor="https://github.com/GauthamVarmaK"
