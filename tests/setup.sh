#/bin/sh

export ANSIBLE_CHECKOUT=v1.8.4
curl https://raw.githubusercontent.com/GetValkyrie/ansible-bootstrap/master/install-ansible.sh | /bin/sh
mkdir -p /etc/ansible/roles && cd /etc/ansible/roles && ln -s /vagrant /etc/ansible/roles/valkyrie-elb
apt-get -y install python-pip
# the debian package is too old for ansible 1.8
pip install boto
cp /vagrant/boto.cfg /etc/boto.cfg
cd /vagrant && git update-index --assume-unchanged boto.cfg
