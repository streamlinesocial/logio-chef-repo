# generate a string that can be used to reference the server
if (defined?(node['logio']['harvester']['instance_name'])).nil?
    serverName = node['logio']['harvester']['instance_name']
else
    serverName = node['fqdn']
end

# stop command
execute "#{node['nodejs']['dir']}/bin/log.io harvester stop"

template "/etc/log.io/harvester.conf" do
    source "harvester.conf.erb"
    action :create
    mode "644"
    variables({
        :instance_name => serverName,
        :host => node['logio']['harvester']['server']['host'],
        :port => node['logio']['harvester']['server']['port'],
        :log_file_paths => node['logio']['harvester']['log_file_paths']
    })
end

# start command
execute "#{node['nodejs']['dir']}/bin/log.io harvester start"
