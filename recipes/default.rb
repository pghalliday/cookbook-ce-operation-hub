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
  "ce-front-end-xreply": "#{node[:ce_operation_hub][:ce_front_end_xreply]}",
  "ce-engine-publisher": "#{node[:ce_operation_hub][:ce_engine_publisher]}",
  "ce-engine-pull": "#{node[:ce_operation_hub][:ce_engine_pull]}"
}
  EOH
end

bash "start ce-operation-hub server" do
  code <<-EOH
    su -l #{node[:ce_operation_hub][:user]} -c "cd #{node[:ce_operation_hub][:destination]} && npm install && npm start"
  EOH
end
