# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
    # setup server machine
    config.vm.define "logioServer" do |vmConfig|
        vmConfig.vm.box = "strsocial-centos-6.3"
        vmConfig.vm.box_url = "http://files.streamlinesocial.com/vagrant/basebox/strsocial-centos-6.3.box"
        vmConfig.vm.customize ["modifyvm", :id, "--memory", 256]

        vmConfig.vm.host_name = "logioServer.dev"
        vmConfig.vm.network :hostonly, "192.168.22.100"

        # provision the virtual machine
        vmConfig.vm.provision :chef_solo do |chef|
            chef.log_level = :info # debug, info, warn
            chef.cookbooks_path = ["cookbooks", 'site-cookbooks']
            chef.data_bags_path = "data_bags"
            chef.roles_path     = "roles"
            chef.add_role "base-centos-6"
            chef.add_recipe "nodejs"
            chef.add_recipe "logio"
            chef.add_recipe "logio::server"
            chef.add_recipe "logio::client"
                chef.json = {
                    "logio" => {
                        "server" => {
                            "basic_auth" => {
                                "username" => "",
                                "password" => "",
                            }
                        }
                    }
                }
        end
    end

    harvesterJson = {
        "logio" => {
            "harvester" => {
                "server" => {
                    "host" => "192.168.22.100"
                },
                "log_file_paths" => [
                    {"name" => "cron", "path" => "/var/log/cron"}
                ]
            }
        }
    }

    # config a virtual machine
    config.vm.define "logio1" do |vmConfig|
        vmConfig.vm.box = "strsocial-centos-6.3"
        vmConfig.vm.box_url = "http://files.streamlinesocial.com/vagrant/basebox/strsocial-centos-6.3.box"
        vmConfig.vm.customize ["modifyvm", :id, "--memory", 256]

        vmConfig.vm.host_name = "logio1.dev"
        # vmConfig.vm.network :hostonly, "192.168.33.101"

        # provision the virtual machine
        vmConfig.vm.provision :chef_solo do |chef|
            chef.log_level = :info # debug, info, warn
            # chef.log_location = "/var/log/chef-client.log"
            chef.cookbooks_path = ["cookbooks", 'site-cookbooks']
            chef.data_bags_path = "data_bags"
            chef.roles_path     = "roles"
            chef.add_role "base-centos-6"
            chef.add_recipe "nodejs"
            chef.add_recipe "logio"
            chef.add_recipe "logio::client"
            chef.add_recipe "logio::test_cron"
            chef.json = harvesterJson
        end
    end

    # config a virtual machine
    config.vm.define "logio2" do |vmConfig|
        vmConfig.vm.box = "strsocial-centos-6.3"
        vmConfig.vm.box_url = "http://files.streamlinesocial.com/vagrant/basebox/strsocial-centos-6.3.box"
        vmConfig.vm.customize ["modifyvm", :id, "--memory", 256]

        vmConfig.vm.host_name = "logio2.dev"
        # vmConfig.vm.network :hostonly, "192.168.33.102"

        # provision the virtual machine
        vmConfig.vm.provision :chef_solo do |chef|
            chef.log_level = :info # debug, info, warn
            # chef.log_location = "/var/log/chef-client.log"
            chef.cookbooks_path = ["cookbooks", 'site-cookbooks']
            chef.data_bags_path = "data_bags"
            chef.roles_path     = "roles"
            chef.add_role "base-centos-6"
            chef.add_recipe "nodejs"
            chef.add_recipe "logio"
            chef.add_recipe "logio::client"
            chef.add_recipe "logio::test_cron"
            chef.json = harvesterJson
        end
    end

    # config a virtual machine
    config.vm.define "logio3" do |vmConfig|
        vmConfig.vm.box = "strsocial-centos-6.3"
        vmConfig.vm.box_url = "http://files.streamlinesocial.com/vagrant/basebox/strsocial-centos-6.3.box"
        vmConfig.vm.customize ["modifyvm", :id, "--memory", 256]

        vmConfig.vm.host_name = "logio3.dev"
        # vmConfig.vm.network :hostonly, "192.168.33.103"

        # provision the virtual machine
        vmConfig.vm.provision :chef_solo do |chef|
            chef.log_level = :info # debug, info, warn
            # chef.log_location = "/var/log/chef-client.log"
            chef.cookbooks_path = ["cookbooks", 'site-cookbooks']
            chef.data_bags_path = "data_bags"
            chef.roles_path     = "roles"
            chef.add_role "base-centos-6"
            chef.add_recipe "nodejs"
            chef.add_recipe "logio"
            chef.add_recipe "logio::client"
            chef.add_recipe "logio::test_cron"
            chef.json = harvesterJson
        end
    end
end
