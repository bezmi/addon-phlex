#!/usr/bin/with-contenv bash

# spellcheck disable=SC1091

source /usr/lib/hassio-addons/base.sh
mkdir /var/www/html/Phlex/

#fetch repository
if [ ! -d /var/www/html/Phlex/.git ]; then
    echo "No repo found, pulling."
    cd /var/www/html/Phlex/
    git clone https://github.com/d8ahazard/Phlex .
    cd -
fi

echo "Updating Phlex."
cd /var/www/html/Phlex/
git pull

#Permissions
chown -R nginx /var/www/html/Phlex/
