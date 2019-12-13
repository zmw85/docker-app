#! /bin/bash

docker run -p 80:80 \
    -v /private/var/lib/pgadmin:./volume/lib/pgadmin \
    -e 'PGADMIN_DEFAULT_EMAIL=jeffwang03@gmail.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=123456' \
    -e 'PGADMIN_CONFIG_ENHANCED_COOKIE_PROTECTION=True' \
    -e 'PGADMIN_CONFIG_LOGIN_BANNER="Authorised users only!"' \
    -e 'PGADMIN_CONFIG_CONSOLE_LOG_LEVEL=10' \
    -d dpage/pgadmin4