#!/usr/bin/with-contenv bash

# spellcheck disable=SC1091

#source /usr/lib/hassio-addons/base.sh

#fetch repository
if [ ! -d /data/www/localhost/htdocs/Phlex/.git ]; then
    echo "No repo found, pulling."
    mkdir -p /data/www/localhost/htdocs/Phlex/
    cd /data/www/localhost/htdocs/Phlex/
    git clone https://github.com/d8ahazard/Phlex .
    cd -
fi

echo "Updating Phlex."
cd /data/www/localhost/htdocs/Phlex/
git pull
cd -

if [ ! -f /share/config.ini.php ]; then
    echo "config file not found, creating in /share"
    touch /share/config.ini.php
fi


if [ ! -f /share/config.ini.php ]; then
    echo "config file not found, creating in /share"
    touch /share/config.ini.php
fi

#Permissions
ln -s /share/config.ini.php /data/www/html/Phlex/config.ini.php
chown nginx /share/config.ini.php
<<<<<<< HEAD
chown -R apache /data/www/localhost/htdocs/Phlex/
=======
chown -R nginx /data/www/html/Phlex/
>>>>>>> ca92332eea41d18498c6950bae7bb117b0fd1797
