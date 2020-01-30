#!/bin/sh

/opt/farm/scripts/setup/extension.sh sf-net-utils

path="/etc/local/.farm"
files="
$path/backup.hosts
$path/workstation.hosts
$path/problematic.hosts
$path/physical.hosts
$path/virtual.hosts
$path/docker.hosts
$path/openvz.hosts
$path/lxc.hosts
$path/cloud.hosts
"

mkdir -p $path
chmod 0700 $path

for db in $files; do
	touch $db
	chmod 0600 $db
done

mkdir -p /etc/local/hooks /srv/imap /srv/rsync
