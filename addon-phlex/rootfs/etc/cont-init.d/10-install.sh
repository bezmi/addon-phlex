#!/usr/bin/with-contenv bash

# spellcheck disable=SC1091

#source /usr/lib/hassio-addons/base.sh

#fetch repository
if [ ! -d /data/www/html/Phlex/.git ]; then
    echo "No repo found, pulling."
    mkdir -p /data/www/html/Phlex/
    cd /data/www/html/Phlex/
    git clone https://github.com/d8ahazard/Phlex .
    cd -
fi

echo "Updating Phlex."
cd /data/www/html/Phlex/
git pull

if [ ! -f /share/config.ini.php]; then
    echo "config file not found, creating in /share"
    touch /share/config.ini.php
fi

#Permissions
ln -s /share/config.ini.php /data/www/html/Phlex/config.ini.php
chown nginx /share/config.ini.php
chown -R nginx /data/www/html/Phlex/
