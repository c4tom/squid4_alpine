FROM alpine:3.12

RUN apk add --no-cache --update squid apache2-utils

RUN sed -i 's/#cache_dir/cache_dir/' /etc/squid/squid.conf

EXPOSE 3128/tcp

VOLUME [ "/var/log/squid","/etc/squid","/var/cache/squid" ]

#check cache_mgr for http response code
HEALTHCHECK --interval=1m --timeout=10s \
  CMD squidclient mgr: | head -1 | grep "HTTP/1.1 200 OK"

ADD init /init

CMD ["/init"]
