#!/bin/sh

if [ ! -e var/log/caddy ]; then
  mkdir -p var/log/caddy
  chmod 755 var/log/caddy
fi

if [ ! -e srv/caddy ]; then
  mkdir srv/caddy
fi

OLDLR=etc/logrotate.d/caddy
NEWLR=etc/logrotate.d/caddy.new

if [ ! -r $OLDLR ]; then
 mv $NEWLR $OLDLR
elif [ "`cat $OLDLR | md5sum`" = "`cat $NEWLR | md5sum`" ]; then
 rm $NEWLR
fi
