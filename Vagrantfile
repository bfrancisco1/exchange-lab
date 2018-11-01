# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  
  config.vm.define "dc1" do |dc1|
    dc1.vm.box = "tmcsvc/windows_2012_r2"
    dc1.vm.hostname = "dc01"
    dc1.vm.network "private_network", ip: "192.168.50.10"
    #dc1.vm.network "forwarded_port", guest: 3000, host: 3030
    #dc1.vm.provision "shell" do |s|
    #  s.path = "build.sh"
    #end
    dc1.vm.provider "virtualbox" do |v|
      v.memory = 1324
      v.cpus = 2
      v.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "0", "--device", "1","--type", "dvddrive", "--medium","c:\\iso\\SW_DVD9_Windows_Svr_Std_and_DataCtr_2012_R2_64Bit_English_-4_MLF_X19-82891.iso"]
    end
  end

  config.vm.define "ex01" do |ex01|
    ex01.vm.box = "tmcsvc/windows_2012_r2"
    ex01.disksize.size = '80GB'
    ex01.vm.hostname = "ex01"
    ex01.vm.network "private_network", ip: "192.168.50.11"
    ex01.vm.network "forwarded_port", guest: 443, host: 443
    ex01.vm.network "forwarded_port", guest: 25, host: 25
    ex01.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 2
      v.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "0", "--device", "1","--type", "dvddrive", "--medium","c:\\iso\\SW_DVD9_Windows_Svr_Std_and_DataCtr_2012_R2_64Bit_English_-4_MLF_X19-82891.iso"]
      v.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "1", "--device", "1","--type", "dvddrive", "--medium","c:\\iso\\SW_DVD9_Exchange_Svr_2013w_SP1_MultiLang_Std_Ent_MLF_X19-35118 (1).iso"]
    end
  end
end
