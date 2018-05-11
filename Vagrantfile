Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "consul-server-01" do |cs|
    cs.vm.hostname = "consul-server-01"
    cs.vm.network "private_network", ip: "172.20.20.31"
    cs.vm.provision "shell", path: "docker.sh"
    cs.vm.provision "shell", path: "consul.sh"
  end

  config.vm.define "consul-client-01" do |cs|
    cs.vm.hostname = "consul-client-01"
    cs.vm.network "private_network", ip: "172.20.20.32"
    cs.vm.provision "shell", path: "consul.sh"
  end
end
