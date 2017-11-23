#!/usr/bin/with-contenv bash

# spellcheck disable=SC1091

source /usr/lib/hassio-addons/base.sh

#fetch repository
if [! -d /var/www/Phlex/.git ]; then
    echo "No repo found, pulling."
        git clone https://github.com/d8ahazard/Phlex /var/www/html/Phlex
fi

echo "Updating Phlex."
cd /var/www/html/Phlex
git pull

#Permissions
chown -R nginx /var/www/html/
