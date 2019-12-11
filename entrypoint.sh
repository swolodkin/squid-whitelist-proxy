#!/bin/sh

[ -d /tmp/ssl_db ] && rm -r /tmp/ssl_db
[ -f /squid/squid.pid ] && rm /squid/squid.pid
mkdir -p /squid/var/cache/squid
/usr/lib/squid/ssl_crtd -c -s /tmp/ssl_db

exec squid "$@"
