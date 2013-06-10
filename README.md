cookbook-ce-operation-hub
=========================

Chef cookbook to install and start a ce-operation-hub instance

## Depends

- nodejs
- git
- zeromq (https://github.com/pghalliday/cookbook-zeromq.git)

## Attributes

Attributes are specified under the `ce_operation_hub` keyspace.

- `node[:ce_operation_hub][:repository]` - the Git repository to install ce-operation-hub from (defaults to "https://github.com/pghalliday/ce-operation-hub.git")
- `node[:ce_operation_hub][:destination]` - the directory to install ce-operation-hub to (defaults to "/opt/ce-operation-hub")
- `node[:ce_operation_hub][:user]` - the user to install and start ce-operation-hub as (defaults to "ce-operation-hub")
- `node[:ce_operation_hub][:bind_address]` - the address to bind the ce-operation-hub server to (defaults to "tcp://127.0.0.1:4000")

## Recipes

### default

- Installs ce-operation-hub
- Runs npm install to get dependencies
- Runs npm start to start the ce-operation-hub

## License
Copyright (c) 2013 Peter Halliday  
Licensed under the MIT license.
