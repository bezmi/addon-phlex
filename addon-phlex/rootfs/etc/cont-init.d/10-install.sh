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
touch config.ini.php

#Permissions
chown -R nginx /data/www/html/Phlex/
ln -s /data/www/html/Phlex/config.ini.php /share/config.ini.php
