Vagrant.configure("2") do |config|
  config.vm.box = "debian/stretch64"
#  config.vm.box = "ubuntu/xenial64"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.network :forwarded_port, guest: 4444, host: 4444

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
end
