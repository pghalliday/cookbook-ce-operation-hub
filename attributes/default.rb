default[:ce_operation_hub][:repository] = "https://github.com/pghalliday/ce-operation-hub.git"
default[:ce_operation_hub][:destination] = "/opt/ce-operation-hub"
default[:ce_operation_hub][:user] = "ce-operation-hub"
default[:ce_operation_hub][:ce_front_end_xreply] = "tcp://*:4000"
default[:ce_operation_hub][:ce_engine_publisher] = "tcp://*:4001"
default[:ce_operation_hub][:ce_engine_pull] = "tcp://*:4002"

# dependency defaults
default[:nodejs][:install_method] = "source"
default[:nodejs][:version] = "0.10.9"
default[:git][:version] = "1.8.3"
default[:zeromq][:version] = "3.2.3"
default[:zeromq][:url] = "http://download.zeromq.org"
