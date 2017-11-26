#!/usr/bin/with-contenv bash
# ==============================================================================
# Community Hass.io Add-ons: Pi-hole
# Ensures the required log files exists on the persistant storage
# ==============================================================================
# shellcheck disable=SC1091
source /usr/lib/hassio-addons/base.sh

mkdir -p /data/log

if ! hass.file_exists '/data/log/phlex.log'; then
    touch /data/log/phlex.log
    chmod 644 /data/log/phlex.log
    chown phlex:root /data/log/phlex.log
fi

ln -s /data/log/phlex.log /var/log/phlex.log
