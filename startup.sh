#!/usr/bin/env sh

mkdir /var/log/httpd
touch /var/log/httpd/error.log
chown -R apache.apache /data/svn/repos

cp -r /etc/apache2/conf.d/subversion.conf.template /etc/apache2/conf.d/subversion.conf

sed -i "s/__SVN_URI_PREFIX__/$SVN_URI_PREFIX/g" /etc/apache2/conf.d/subversion.conf

# start apache
exec /usr/sbin/apachectl -DFOREGROUND;

tail -f /var/log/httpd/error.log

