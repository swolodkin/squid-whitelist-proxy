FROM alpine:latest

RUN apk add squid && \
    mkdir -p /squid/var/cache/squid && \
    chown -R squid /squid

COPY squid.conf /etc/squid/
COPY sites.whitelist.txt /etc/squid/

EXPOSE 3128

CMD ["squid", "-NYCd", "1"]

USER squid