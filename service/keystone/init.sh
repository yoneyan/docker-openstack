#!/bin/bash

su -s /bin/bash keystone -c "keystone-manage db_sync"
keystone-manage fernet_setup --keystone-user keystone --keystone-group keystone
keystone-manage credential_setup --keystone-user keystone --keystone-group keystone

#export controller=10.30.0.2
keystone-manage bootstrap --bootstrap-password adminpassword \
  --bootstrap-admin-url http://10.30.0.2:5000/v3/ \
  --bootstrap-internal-url http://10.30.0.2:5000/v3/ \
  --bootstrap-public-url http://10.30.0.2:5000/v3/ \
  --bootstrap-region-id RegionOne
