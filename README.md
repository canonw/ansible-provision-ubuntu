# Personal Ubuntu desktop Ansible Setup Instruction
Track new instance Ubuntu using Ansible, by setting one-time configuration and automated software installation.

## Boostraping

Login as sudo.  Run the following commands in sh  to enable Ansible

PIP installtion is preferred over apt.

```
sudo apt-get update -y && sudo apt-get install software-properties-common python python-pip -y
sudo apt-get install sshpass -y

sudo apt-get install apt-transport-https ca-certificates -y
sudo apt-get install python-dev libffi-dev libssl-dev -y 

sudo -H pip install pip --upgrade
sudo -H pip install setuptools --upgrade
sudo -H pip install pyopenssl ndg-httpsclient pyasn1

sudo -H pip install ansible

sudo mkdir -p /etc/ansible
echo -e "[local]\n127.0.0.1" | sudo tee -a /etc/ansible/hosts
```

## Begin Provisioning

1. Review playbool.yml and uncommet roles intended to install.

2. Run the following command to start installion.

```
ansible-playbook playbook
```

## Post Provisioning
Sensitive informaiton is not part this setup.  Thus, additional steps should be taken.
