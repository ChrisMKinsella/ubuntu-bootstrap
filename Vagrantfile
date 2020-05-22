# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
    # create nginx node
    config.vm.define :ubuntu do |ubuntu_config|
  
        ubuntu_config.vm.box = "ubuntu/bionic64"
  
        ubuntu_config.vm.hostname = "ubuntu"
       
        ubuntu_config.vm.provider "virtualbox" do |vb|
          vb.memory = "2048"
          vb.cpus = 2
          vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
  
          # Compare the time every 10 seconds
          vb.customize ["guestproperty","set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-interval", "10000"]
  
          # Only change when it is ±0.1s out.
          vb.customize ["guestproperty","set",:id,"/VirtualBox/GuestAdd/VBoxService/--timesync-min-adjust","100"]
  
          # Resync time when we restart.
          vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-on-restore", "1"]
  
          # Only change by 1 second at a time.
          # Changing the time a lot can confuse processes that interrogate the time to do their work.
          vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold",  "1000"]
        end
  
        if Vagrant.has_plugin?("vagrant-cachier")
          ubuntu_config.cache.scope = :box
        end
  
        ubuntu_config.vm.provision "shell", path: "snap.sh"
        ubuntu_config.vm.provision "shell", path: "git.sh"
        ubuntu_config.vm.provision "shell", path: "firefox.sh"
        ubuntu_config.vm.provision "shell", path: "chrome.sh"
        ubuntu_config.vm.provision "shell", path: "virtualbox.sh"  
        ubuntu_config.vm.provision "shell", path: "vagrant.sh" 
        ubuntu_config.vm.provision "shell", path: "libreoffice.sh" 
  
        
    end
    
  end
  