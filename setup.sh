#!/bin/sh

path="/etc/local/.config"
files="$path/backup.hosts $path/workstation.hosts $path/problematic.hosts $path/physical.hosts $path/virtual.hosts $path/openvz.hosts $path/ec2.hosts $path/mikrotik.hosts"

for db in $files; do
	touch $db
	chmod 0600 $db
done

ln -sf /opt/sf-farm-manager/add-dedicated-key.sh /usr/local/bin/add-dedicated-key
ln -sf /opt/sf-farm-manager/add-managed-host.sh /usr/local/bin/add-managed-host
ln -sf /opt/sf-farm-manager/execute.sh /usr/local/bin/sf-execute
ln -sf /opt/sf-farm-manager/console.sh /usr/local/bin/sf-console
