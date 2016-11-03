#!/bin/sh

#### Setting up ansible repository &&  update and upgrade the system

sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
#sudo apt-get upgrade -y

### Installing pre-requisit to run playbook
sudo apt-get install -y ansible git-core
cd /tmp && sudo git clone https://github.com/nadeemshahzad/lt-ansible.git 
sudo ansible-playbook -i "localhost," -c local  lt-ansible/site.yml
