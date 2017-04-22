#!/bin/bash -x

mkdir -p /srv
ln -sf "$(pwd)/laptop-build/salt/roots" /srv/salt
ln -sf "$(pwd)/laptop-build/salt/pillar" /srv/pillar
ln -sf "$(pwd)/laptop-build/ansible" /srv/ansible

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "deb https://download.docker.com/linux/ubuntu trusty stable" > /etc/apt/sources.list.d/docker.list
apt-get update

exit 0