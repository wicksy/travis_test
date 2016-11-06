#!/bin/bash -x

mkdir -p /srv
ln -sf "$(pwd)/laptop-build/salt/roots" /srv/salt
ln -sf "$(pwd)/laptop-build/salt/pillar" /srv/pillar
ln -sf "$(pwd)/laptop-build/ansible" /srv/ansible

cd /srv/ansible && /usr/bin/ansible-playbook -i hosts site.yml -vv --limit=travis-ci

ansible-playbook --version

exit 0