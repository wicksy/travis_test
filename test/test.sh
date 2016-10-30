#!/bin/bash -x

#mkdir -p /srv
#ln -sf "$(pwd)/CV/salt/roots" /srv/salt
#ln -sf "$(pwd)/CV/salt/pillar" /srv/pillar

#salt-call --local -l debug state.apply

#docker ps
#sleep 30
#curl "http://localhost:8080"

#salt-call --version

#echo "Home dir stuff"
#find ${HOME} -name testinfra -ls
which testinfra
/home/travis/virtualenv/python2.7.10/bin/testinfra --version
echo "PATH: ${PATH}"
echo "Local bin"
ls -l /usr/local/bin

exit 0