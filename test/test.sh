#!/bin/bash

mkdir -p /srv
ln -sf "$(pwd)/laptop-build/salt/roots /srv/salt"
ln -sf "$(pwd)/laptop-build/salt/pillar /srv/pillar"
find /srv -follow -ls

salt-call --version

exit 0