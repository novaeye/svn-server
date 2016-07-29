#!/usr/bin/env sh

chown -R apache.apache /data/svn/repos

cp -r /etc/apache2/conf.d/subversion.conf.template /etc/apache2/conf.d/subversion.conf

sed -i "s/__SVN_URI_PREFIX__/$SVN_URI_PREFIX/g" /etc/apache2/conf.d/subversion.conf

# start apache
/usr/sbin/apachectl -DFOREGROUND

