## Vagrant nodes for kubernetes cluster

Vagrant.configure("2") do |config|
    config.vm.provision "shell", inline: "echo Hello"
    config.vm.provision "shell", inline: 'echo "vagrant:$1$CgXwKUrE$vuIakOx/u9hZn8NHQjrh01" | chpasswd --encrypted'  
    config.vm.provision "shell", inline: 'echo "root:$1$CgXwKUrE$vuIakOx/u9hZn8NHQjrh01" | chpasswd --encrypted'
    config.vm.provision "shell", inline: 'sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config && systemctl restart sshd.service'
   config.vm.provision "shell", inline: 'echo "send dhcp-client-identifier = hardware;" >>/etc/dhcp/dhclient.conf'
     
    config.vm.define "manager" do |manager|
      manager.vm.box = "debian/bullseye64"
      manager.vm.network "private_network", ip: "192.168.80.105"
    end
  
  
    config.vm.define "c1" do |c1|
      c1.vm.box = "debian/bullseye64"
      c1.vm.network "private_network", ip: "192.168.80.102"
      c1.vm.provider :virtualbox do |vb|
            vb.customize ["modifyvm", :id, "--memory", "4092"]
            vb.customize ["modifyvm", :id, "--cpus", "4"]
        end
      c1.vm.provider :libvirt do |vb|
            vb.cpus = 4
            vb.memory = 6096
        end
    end
    
    
    config.vm.define "w2" do |w2|
      w2.vm.box = "debian/bullseye64"
      w2.vm.network "private_network", ip: "192.168.80.103"
      w2.vm.provider :libvirt do |vb|
            vb.cpus = 4
            vb.memory = 6096
        end
    end
    
    config.vm.define "w3" do |w3|
      w3.vm.box = "debian/bullseye64"
      w3.vm.network "private_network", ip: "192.168.80.104"
      w3.vm.provider :libvirt do |vb|
            vb.cpus = 4 
            vb.memory = 6096
        end
    
    end  

    config.vm.define "gitlab" do |gitlab|
        gitlab.vm.box = "debian/bullseye64"
        gitlab.vm.network "private_network", ip: "192.168.80.106"
        gitlab.vm.provider :libvirt do |vb|
              vb.cpus = 4 
              vb.memory = 6096
          end
      
      end      
   
  end
  