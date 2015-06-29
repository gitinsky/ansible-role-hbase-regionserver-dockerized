#!/bin/sh
set -e
chown -R hadoop:hadoop /var/log/hbase
exec sudo -E -u hadoop /hbase/bin/hbase regionserver start 1>>/var/log/hbase/regionserver.log 2>&1
