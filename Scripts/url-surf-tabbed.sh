#!/bin/sh
if [ ! "$(pidof tabbed)" ]
then
tabbed -d > /tmp/tabbed.xid &
fi
surf -e `cat /tmp/tabbed.xid` $1 > /dev/null 2>&1 &
