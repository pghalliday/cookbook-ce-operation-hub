include_recipe "nodejs"
include_recipe "git"
include_recipe "zeromq"

bash "clone ce-operation-hub" do
  code <<-EOH
    git clone https://github.com/pghalliday/ce-operation-hub.git #{node[:ce_operation_hub][:installDirectory]}
  EOH
  not_if { ::FileTest.exists?(node[:ce_operation_hub][:installDirectory]) }
end