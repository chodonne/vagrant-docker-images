VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.6.0"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'

  # used this instead of vagrant-hostmanager since I think it gets confused
  # if the vagrant-vmware plugin is installed
  if Vagrant.has_plugin?("vagrant-hostmanager")
    config.hostmanager.enabled = true
    config.hostmanager.manage_guest = true
    # hack to get the right ip and not 127.0.0.1
    config.hostmanager.ip_resolver = proc do |vm, resolving_vm|
      if vm.id && vm.provider_name == :docker
        `'/usr/bin/env' docker inspect -f "{{ .NetworkSettings.IPAddress }}" "#{vm.name}"`.chomp
      end
    end
  end

  # Uncomment section for Ubuntu 14.04
  #config.vm.define :d1 do |d1i|
  #  # this is what hostmanager uses in the hosts file
  #  d1i.vm.hostname = "dhostname1"
  #  d1i.vm.provider "docker" do |d|
  #    d.image = "ubu1404_vagrant"
  #    d.cmd = ["/usr/bin/dumb-init", "/usr/sbin/sshd", "-D"]
  #    d.has_ssh = true
  #    # main name in /etc/hosts and sets machine hostname
  #    # "privileged" is needed so systemd can start
  #    d.create_args = ["--privileged",
  #                     "--hostname",
  #                     "dhosts1",
  #    ]
  #    # name in docker ps
  #    # has to match config.vm.define for hostmanager to work
  #    d.name = "d1"
  #  end
  #end

  # Uncomment section for Ubuntu 16.04
  #config.vm.define :d1 do |d1i|
  #  # this is what hostmanager uses in the hosts file
  #  d1i.vm.hostname = "dhostname1"
  #  d1i.vm.provider "docker" do |d|
  #    d.image = "ubu1604_vagrant"
  #    d.cmd = ["/lib/systemd/systemd"]
  #    d.has_ssh = true
  #    # main name in /etc/hosts and sets machine hostname
  #    # "privileged" is needed so systemd can start
  #    d.create_args = ["--privileged",
  #                     "--hostname",
  #                     "dhosts1",
  #    ]
  #    # name in docker ps
  #    # has to match config.vm.define for hostmanager to work
  #    d.name = "d1"
  #  end
  #end

  # Uncomment section for Ubuntu 18.04
  #config.vm.define :d1 do |d1i|
  #  # this is what hostmanager uses in the hosts file
  #  d1i.vm.hostname = "dhostname1"
  #  d1i.vm.provider "docker" do |d|
  #    d.image = "ubu1804_vagrant"
  #    d.cmd = ["/lib/systemd/systemd"]
  #    d.has_ssh = true
  #    # main name in /etc/hosts and sets machine hostname
  #    # "privileged" is needed so systemd can start
  #    d.create_args = ["--privileged",
  #                     "--hostname",
  #                     "dhosts1",
  #    ]
  #    # name in docker ps
  #    # has to match config.vm.define for hostmanager to work
  #    d.name = "d1"
  #  end
  #end
end
