#!/usr/bin/env bash

ansible-playbook playbook.yml -i hosts --vault-password-file vault_pass.txt --ask-pass --become -c paramiko
