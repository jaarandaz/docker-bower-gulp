#!/bin/bash

chown -R www-data:www-data /var/www

su -c "npm install" -s /bin/bash www-data
su -c "bower install -q" -s /bin/bash www-data
su -c "gulp" -s /bin/bash www-data