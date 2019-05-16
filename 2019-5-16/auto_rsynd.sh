#!/bin/sh
#See reyncd.conf man page for more options
[ ! -d /home/ftp ] && mkdir /home/ftp
echo 'uid=nobody
gid =nobody
use chroot=yes
max connectoin=4
pid file=/var/run/rsyncd.pid
exclude=lost+found/
transfer logging=yes
timeout=900
ignore nonreadable=yes
dont compress = *.gz *.tgz *.zip *.z *.Z *.rpm *.deb *.bz2
[ftp]
  path=/home/ftp
  comment=share' > /etc/rsyncd.conf