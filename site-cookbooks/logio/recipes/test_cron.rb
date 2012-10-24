
# create something to log
cron "test cron" do
    action :create
    command "echo 'cron ran' > /tmp/cron_ran"
end
