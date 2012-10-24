# add iptables rule for the file in templates/default/port_logio.erb
iptables_rule "port_logio"

# stop command
execute "#{node['nodejs']['dir']}/bin/log.io server stop"

template "/etc/log.io/server.conf" do
    source "server.conf.erb"
    action :create
    mode "644"
    variables({
        :port => node['logio']['server']['port'],
        :user => node['logio']['server']['basic_auth']['username'],
        :pass => node['logio']['server']['basic_auth']['password']
    })
end

# start command
execute "#{node['nodejs']['dir']}/bin/log.io server start"

