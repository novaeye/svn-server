FROM smebberson/alpine-apache:latest

MAINTAINER novaeye <fcoffee@gmail.com>

RUN apk add --update subversion apache2-webdav mod_dav_svn && rm -rf /var/cache/apk/*

COPY subversion.conf /etc/apache2/conf.d/subversion.conf.template

RUN rm -rf /etc/services.d/apache/run

RUN mkdir -p /data/svn

VOLUME /data/svn

ADD startup.sh /startup.sh

EXPOSE 80

ENV SVN_URI_PREFIX=svn

CMD /bin/sh /startup.sh
