#!/bin/bash
ansible-playbook -v -i test master.yml --extra-vars "env_state=present" -t centos,pg,nginx,zabbix,zabbix_agent --vault-password-file=/etc/ansible/.ansible_vault_pass -e 'zabbix_install=true'
