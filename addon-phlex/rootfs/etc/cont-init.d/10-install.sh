#!/usr/bin/with-contenv bash

# spellcheck disable=SC1091

#source /usr/lib/hassio-addons/base.sh
mkdir -p /data/www/html/Phlex/

#fetch repository
if [ ! -d /data/www/html/Phlex/.git ]; then
    echo "No repo found, pulling."
    cd /data/www/html/Phlex/
    git clone https://github.com/d8ahazard/Phlex .
    cd -
fi

echo "Updating Phlex."
cd /data/www/html/Phlex/
git pull

#Permissions
chown -R nginx /data/www/html/Phlex/
