cookbook-ce-operation-hub
=========================

Chef cookbook to install ce-operation-hub

## Depends

- nodejs
- git
- zeromq (https://github.com/pghalliday/cookbook-zeromq.git)

## Attributes

Attributes are specified under the `ce_operation_hub` keyspace.

- `node[:ce_operation_hub][:installDirectory]` - the directory to install ce-operation-hub to (defaults to "/opt/ce-operation-hub")

## Recipes

### default

Installs ce-operation-hub

## License
Copyright (c) 2013 Peter Halliday  
Licensed under the MIT license.
