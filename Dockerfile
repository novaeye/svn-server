FROM elleflorio/svn-server

ENV SVN_URI_PREFIX=svn

ADD apache/ /etc/services.d/apache/

COPY subversion.conf.template /etc/apache2/conf.d/dav_svn.conf.template

VOLUME /home/svn

