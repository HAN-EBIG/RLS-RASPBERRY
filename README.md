# Raspberry Pi Setup using Ansible

## Installation

Clone and setup the ansible script. 

```
git clone https://github.com/HAN-EBIG/RLS-RASPBERRY.git
cd RLS-RASPBERRY
cp hosts.example hosts
cp wpa_supplicant.conf.example wpa_supplicant.conf
cp vault_pass.txt.example vault_pass.txt
```

Edit the `wpa_supplicant.conf`, `hosts`, and `vault_pass.txt` files. The file wpa_supplicant.conf.eduroam contains
an example of a configuration used in eduroam networks. The vault_pass.txt file must contain the vault password
from the respective confluence page in the ebig wiki. Then run install script.

```
bash installController.sh
```

## Requirements

[Ansible](http://www.ansible.com/) is required. 
