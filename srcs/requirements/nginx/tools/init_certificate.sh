#!/bin/bash

if [ ! -f /etc/ssl/certs/inception.crt ]; then
    openssl req -x509 -nodes -days 365 -newkey rsa:4096 \
        -keyout /etc/ssl/private/inception.key \
        -out /etc/ssl/certs/inception.crt \
        -subj "/C=TR/ST=KOCAELI/L=GEBZE/O=42Kocaeli/CN=aaslan.42.fr";
fi

exec "$@"