#!/bin/bash
su -s /bin/bash nova -c "nova-manage api_db sync" nova
su -s /bin/bash nova -c "nova-manage cell_v2 map_cell0" nova
su -s /bin/bash nova -c "nova-manage db sync" nova
su -s /bin/bash nova -c "nova-manage cell_v2 create_cell --name cell1" nova

