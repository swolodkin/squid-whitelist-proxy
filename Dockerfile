FROM alpine:latest

RUN apk add squid

COPY squid.conf /etc/squid/
COPY sites.whitelist.txt /etc/squid/

EXPOSE 3128

CMD ["squid", "-NYCd", "1"]