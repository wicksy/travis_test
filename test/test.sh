#!/bin/bash -x

mkdir -p /srv
ln -sf "$(pwd)/CV/salt/roots" /srv/salt
ln -sf "$(pwd)/CV/salt/pillar" /srv/pillar

salt-call --local -l debug state.apply

docker ps
sleep 30
curl "http://localhost:8080"

salt-call --version

exit 0