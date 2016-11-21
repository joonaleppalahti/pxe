#!/bin/sh
echo "$0 started"
sudo service puppet stop
sudo hostnamectl set-hostname v$RANDOM$RANDOM$RANDOM
sudo service avahi-daemon restart

cat << EOF /etc/puppet/puppet.conf

[main]
logdir=/var/log/puppet
vardir=/var/lib/puppet
ssldir=/var/lib/puppet/ssl
rundir=/run/puppet
factpath=$vardir/lib/facter
prerun_command=/etc/puppet/etckeeper-commit-pre
postrun_command=/etc/puppet/etckeeper-commit-post

[master]
ssl_client_header = SSL_CLIENT_S_DN
ssl_client_verify_header = SSL_CLIENT_VERIFY

[agent]
server = PXEMaster.local

EOF

sudo rm -r /var/lib/puppet/ssl
sudo puppet agent --enable
sudo service puppet restart

echo "$0 done"
