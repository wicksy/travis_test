#!/bin/bash -x

mkdir -p /srv
ln -sf "$(pwd)/laptop-build/ansible" /srv/ansible

cat > /srv/ansible/hosts << EOF
[localhost]
localhost ansible_connection=local
EOF

export ANSIBLE_NOCOWS=1
cd /srv/ansible && /usr/bin/ansible-playbook -i hosts site.yml --limit=localhost

exit 0