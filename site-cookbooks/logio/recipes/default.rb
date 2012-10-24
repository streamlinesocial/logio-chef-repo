# per log.io documentation
execute "npm config set unsafe-perm true" do
    # update config only if it needs to be updated
    not_if "#{node['nodejs']['dir']}/bin/npm config get unsafe-perm | grep true"
end

# install as global node package
execute "npm install -g --prefix=#{node['nodejs']['dir']} log.io" do
    # install only if its not yet installed
    not_if "#{node['nodejs']['dir']}/bin/npm list -g | grep log.io"
end

