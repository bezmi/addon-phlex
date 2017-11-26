#!/usr/bin/with-contenv bash

# shellcheck disable=SC1091

source /usr/lib/hassio-addons/base.sh

declare port
declare fastcgiport
declare certfile
declare keyfile

port=$(hass.config.get 'port')
fastcgiport=$(hass.config.get 'fastcgiport')

sed -i "s/%%port%%/${port}/g" /etc/apache2/httpd.conf
sed -i "s/%%fastcgiport%%/${fastcgiport}/g" /etc/apache2/httpd.conf
sed -i "s/%%fastcgiport%%/${fastcgiport}/g" /etc/php7/php-fpm.d/www.conf
sed -i "s/%%port%%/${port}/g" /etc/php7/php-fpm.d/www.conf

