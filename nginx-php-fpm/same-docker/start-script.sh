#!/bin/bash
set -e

echo "check for the nginx status and start it" 
if [ -d "/usr/sbin/php-fpm7.0" ]; then
	echo "yes the php-fpm is present"
	/usr/sbin/php-fpm7.0 -g daemonoff;
else
	echo "no php-fpm in not in desired path"
fi

if [ -d "/usr/sbin/nginx" ]; then
	echo "yes nginx is present"
	/usr/sbin/nginx -g daemonoff;
else
	echo "no nginx in not in desired path"
fi
