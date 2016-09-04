FROM hypriot/rpi-alpine-scratch
MAINTAINER Daniel S.

RUN apk add --update lighttpd \
 && rm -rf /var/cache/apk/*

RUN mkdir -p /var/cache/lighttpd/compress/ \
 && chown -R lighttpd /var/cache/lighttpd/compress/

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf

EXPOSE 80

VOLUME /var/www/localhost

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
