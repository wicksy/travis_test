#!/bin/bash -x

mkdir -p /srv
ln -sf "$(pwd)/laptop-build/salt/roots" /srv/salt
ln -sf "$(pwd)/laptop-build/salt/pillar" /srv/pillar

salt-call --local -l debug state.apply

salt-call --version

exit 0