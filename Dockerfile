FROM gliderlabs/alpine:latest

MAINTAINER Jozsef Komjati <joshycube@gmail.com>

COPY ./gosu-amd64 /usr/local/bin/gosu

COPY docker-entrypoint.sh /entrypoint.sh

EXPOSE 27017

VOLUME /var/lib/mongodb

ENTRYPOINT ["/entrypoint.sh"]

CMD ["mongod","--bind_ip","0.0.0.0","--dbpath","/var/lib/mongodb","--nounixsocket","--journal","--cpu","--noprealloc"]
