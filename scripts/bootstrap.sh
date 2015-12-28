sudo apt-get -y update

# git

sudo apt-get -y install git

# tor

sudo apt-get -y install tor

sudo cp /vagrant/resources/torrc /etc/tor/

sudo /etc/init.d/tor restart

# privoxy

sudo apt-get -y install privoxy

sudo cp /vagrant/resources/config /etc/privoxy/

sudo /etc/init.d/privoxy restart


# arm

sudo apt-get -y install tor-arm


# misc (lxml, beautifulsoup4, pytorctl)

sudo pip install lxml
sudo pip install beautifulsoup4
cd /home/vagrant
git clone git://github.com/aaronsw/pytorctl.git
cd /home/vagrant/pytorctl
sudo python setup.py install
