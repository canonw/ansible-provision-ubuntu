# Personal Ubuntu desktop Ansible Setup Instruction
Track new Ubuntu instance setup using Ansible, by setting one-time configuration and automated software installation.

## Boostrapping

Login as sudo.  Run the following shell commands to enable Ansible

PIP installation is preferred over apt.

```
sudo apt-get update -y && sudo apt-get upgrade -y && \
sudo apt-get install software-properties-common python python-pip -y && \
sudo apt-get install git -y && \
sudo apt-get install sshpass -y && \
\
sudo apt-get install apt-transport-https ca-certificates -y && \
sudo apt-get install python-dev libffi-dev libssl-dev -y && \
\
sudo -H pip install pip --upgrade && \
sudo -H pip install setuptools --upgrade && \
sudo -H pip install pyopenssl ndg-httpsclient pyasn1 && \
\
sudo -H pip install ansible && \
\
sudo mkdir -p /etc/ansible && \
echo -e "[local]\n127.0.0.1" | sudo tee -a /etc/ansible/hosts && \
\
ansible-galaxy install Comcast.sdkman && \
ansible-galaxy install rvm_io.ruby && \


# ansible-galaxy install nickjj.mariadb && \
# ansible-galaxy install debops.mariadb
```

## Begin Provisioning

1. Review playbool.yml and uncommet roles intended to install.

2. Run the following command to start installation.

```
ansible-playbook playbook
```

## Post Provisioning
Sensitive information is excluded from this setup.  Thus, additional steps should be taken.
