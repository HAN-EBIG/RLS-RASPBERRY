# Raspberry Pi Setup using Ansible

## Installation

Clone and setup the ansible script. 

```
git clone https://github.com/HAN-EBIG/RLS-RASPBERRY.git
cd RLS-RASPBERRY
cp hosts.example hosts
cp wpa_supplicant.conf.example wpa_supplicant.conf
```

Edit the `wpa_supplicant.conf` and `hosts` files.

```
ansible-playbook playbook.yml -i hosts --ask-pass --become -c paramiko
```

## Requirements

[Ansible](http://www.ansible.com/) is required. 
