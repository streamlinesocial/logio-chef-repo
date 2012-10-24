default['logio']['install_prefix'] = '/usr/local'

# server configs
default['logio']['server']['port'] = '8998'
default['logio']['server']['basic_auth']['username'] = nil
default['logio']['server']['basic_auth']['password'] = nil

# harvester (client) configs
default['logio']['harvester']['server']['host'] = '127.0.0.1'
default['logio']['harvester']['server']['port'] = '8998'
default['logio']['harvester']['log_file_paths'] = [
    {"logio_harvester" => "/var/log/log.io/harvester.log"}
]

# optional method to force instance name in nodes, should use fqdn
# default['logio']['harvester']['instance_name'] = 'log_node_1'
