Vagrant.configure(2) do |config|
	numNodes = 9
	r = numNodes..1
	(r.first).downto(r.last).each do |i|
		config.vm.define "node-#{i}" do |node|
			node.vm.box = "hashicorp/precise64"
			node.vm.provider "virtualbox" do |v|
				v.name = "tor-node#{i}"
				v.customize ["modifyvm", :id, "--memory", "512"]
				v.customize ["modifyvm", :id, "--usb", "off"]
				v.customize ["modifyvm", :id, "--usbehci", "off"]
			end
			node.vm.network "private_network", ip: "172.16.200.20#{i}"
			node.vm.hostname = "tor-node#{i}"
			node.vm.provision "shell" do |s|
				s.path = "./scripts/bootstrap.sh"
				s.args = "#{i} #{numNodes}"
			end
		end
	end
end
