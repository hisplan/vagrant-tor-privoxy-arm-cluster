sudo apt-get -y update

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
