include_recipe "nodejs"
include_recipe "git"
include_recipe "zeromq"

user node[:ce_operation_hub][:user] do
end

git "#{node[:ce_operation_hub][:destination]}" do
  user node[:ce_operation_hub][:user]
  repository node[:ce_operation_hub][:repository]
  destination node[:ce_operation_hub][:destination]
  not_if { ::FileTest.exists?(node[:ce_operation_hub][:destination]) }
end

file "#{node[:ce_operation_hub][:destination]}/config.json" do
  owner node[:ce_operation_hub][:user]
  content <<-EOH
{
  "bind-address": "#{node[:ce_operation_hub][:bind_address]}"
}
  EOH
end

bash "start ce-operation-hub server" do
  code <<-EOH
    su -l #{node[:ce_operation_hub][:user]} -c "cd #{node[:ce_operation_hub][:destination]} && npm install && npm start"
  EOH
end
