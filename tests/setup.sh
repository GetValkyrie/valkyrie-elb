#/bin/sh

curl https://raw.githubusercontent.com/GetValkyrie/ansible-bootstrap/master/install-ansible.sh | /bin/sh
cd /etc/ansible/roles && ln -s /vagrant /etc/ansible/roles/valkyrie-elb
cd /vagrant && git update-index --assume-unchanged boto.cfg
