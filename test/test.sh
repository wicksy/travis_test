#!/bin/bash -x

mkdir -p /srv
#ln -sf "$(pwd)/CV/salt/roots" /srv/salt
#ln -sf "$(pwd)/CV/salt/pillar" /srv/pillar

ansible-playbook --version

exit 0