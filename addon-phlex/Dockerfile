ARG BUILD_FROM=hassioaddons/base-amd64:1.0.1
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

# Copy root filesystem
COPY rootfs /

# Setup base
Run \
    #apk add --no-cache --virtual .build-dependencies \
    #    gcc \
    #    musl-dev \
    #    make \
    #\
    apk add --no-cache \
        #bind-tools \
        #wget \
        #libcap \
        nginx \
        php7-fpm \
        php7-json \
        php7-openssl \
        php7-opcache \
        php7-zip \
        php7-session \
        php7-sockets \
        php7-xml \
        php7-simplexml \
        php7-curl \
        php7-mbstring \
        logrotate \
        libxml2 \
        bash \
        curl \
        sudo \
        git \
        openssl \
    \
    && addgroup -S phlex \
    && adduser -S -s /sbin/nologin phlex phlex \
    && addgroup phlex nginx \
    \
    && cd /var/www/html/ \
    && git clone https://github.com/d8ahazard/Phlex \
    && cd - \
    \
    && chown -R nginx /var/www/html/Phlex/
    #\
    #&& apk del --purge .build-dependencies

ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

LABEL \
    io.hass.name="Phlex" \
    io.hass.description="Hass.io instance" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="simran" \
    org.label-schema.description="Hass.io instance" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="Phlex" \
    org.label-schema.schema-version="1.0" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vendor="Community Hass.io Addons"
