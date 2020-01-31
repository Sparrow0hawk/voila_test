# edited down Vagrantfile

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/bionic64"
  # run bootstrap.sh when vagrant sets up the VM
  # the file path is relative to the project root (where Vagrantfile is)
  config.vm.provision :shell, path: "bootstrap.sh"
  # networking through Vagrant
  config.vm.network :forwarded_port, guest: 80, host: 4567
  # configure to use host machine ssh keys
  config.ssh.forward_agent = true
end
