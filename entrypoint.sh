#!/bin/sh

[ -d /tmp/ssl_db ] && rm -r /tmp/ssl_db
[ -f /var/run/squid.pid ] && rm /var/run/squid.pid
mkdir -p /squid/var/cache/squid

exec squid "$@"
