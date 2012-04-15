package "ssh" do
  action :install
end

template "sshd_config" do
  path "#{node["sshd"]["dir"]}/sshd_config"
  source "sshd_config.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, "service[ssh]"
end

service "ssh" do
  provider Chef::Provider::Service::Upstart
  action [ :enable, :start ]
end
