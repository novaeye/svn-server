FROM elleflorio/svn-server

ENV SVN_URI_PREFIX=svn

RUN apk --no-cache add apache2-ldap

ADD apache/ /etc/services.d/apache/

COPY subversion.conf.template /etc/apache2/conf.d/dav_svn.conf.template

VOLUME /home/svn

