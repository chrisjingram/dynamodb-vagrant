# dynamodb-vagrant

Vagrant environment for local DynamoDB development. Intended to create an instance of DynamoDB in a virtual machine for local development. The instance of DynamoDB will have the hostname `dynamodb.vagrant`, and this can be changed in `Vagrantfile`.

Installing inside a Vagrant VM makes it easier to have multiple different dynamodb projects on the same machine - just change the hostname and DNS pattern in Vagrantfile for each project.

## Install

Install VirtualBox, Vagrant and Ansible using your OS package manager (brew, apt-get, yum), then run the following commands to install the local `vagrant-dns` server:

 - `vagrant plugin install vagrant-dns`
 - `vagrant dns --install`

Run the following command to bring up the VM:

 - `vagrant up`

Install DynamoDB on the VM:

 - `chmod +x ansible/provision-vagrant.sh`
 - `./ansible/provision-vagrant.sh`

You can now access the local DynamoDB instance though the hostname `dynamodb.vagrant`.

Go to `http://dynamodb.vagrant:8000/shell` to access DynamoDB's interface, or go to `http://dynamodb.vagrant:8001` to access [dynamodb-admin](https://github.com/aaronshaf/dynamodb-admin).
