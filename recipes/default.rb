include_recipe "nodejs"
include_recipe "git"
include_recipe "zeromq"

bash "clone ce-operation-hub" do
  code <<-EOH
    git clone https://github.com/pghalliday/ce-operation-hub.git #{node[:ce_operation_hub][:installDirectory]}
  EOH
  not_if { ::FileTest.exists?(node[:ce_operation_hub][:installDirectory]) }
end

bash "npm install" do
  code <<-EOH
    cd #{node[:ce_operation_hub][:installDirectory]}
    npm install
  EOH
end

bash "npm start" do
  code <<-EOH
    cd #{node[:ce_operation_hub][:installDirectory]}
    npm start
  EOH
end