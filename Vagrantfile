Vagrant::Config.run do |config|
  config.vm.box = "base"
  
  config.vm.forward_port "http", 80, 8080
  config.vm.forward_port "runserver", 8000, 8000

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"


  # Enable provisioning with chef solo, specifying a cookbooks path (relative
  # to this Vagrantfile), and adding some recipes and/or roles.  
  config.vm.provision :chef_solo do |chef|
    chef.provisioning_path = "/var/vagrant-chef"
    chef.cookbooks_path = "cookbooks"
    chef.log_level = 'debug'
    chef.add_recipe "geos"
    chef.add_recipe "proj4"
    chef.add_recipe "postgis"
    chef.add_recipe "database"
  end

end
