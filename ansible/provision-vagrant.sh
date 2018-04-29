export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
ansible-playbook ansible/playbooks/db-playbook.yml -i ansible/vagrant-hosts -u vagrant --key-file .vagrant/machines/db/virtualbox/private_key
