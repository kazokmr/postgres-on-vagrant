#!/usr/bin/env bash

if ! [`which ansible`]; then
  yum -y install epel-release
  yum -y install ansible
fi

ansible-playbook -i /ansible/staging /ansible/site.yml
