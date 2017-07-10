apt-get update
apt-get install -y ansible git curl wget
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt-get install -y nodejs
mkdir /var/log/mongodb
touch /var/log/mongodb/mongod.log
ansible-galaxy install -r roles.yml -p roles
ansible-playbook dev_env-setup.yml

