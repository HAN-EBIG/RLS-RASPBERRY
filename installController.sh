#!/usr/bin/env bash

ansible-playbook playbook.yml -i hosts --ask-pass --become -c paramiko
