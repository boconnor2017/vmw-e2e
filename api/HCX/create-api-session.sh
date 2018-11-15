# Created by VMWare Professional Services
# Author: Brendan O'Connor
#
# Edit the <username> <password> and <hcx_manager_fqdn> parameters below
curl -i  -H "Accept: application/json" -H "Content-Type: application/json"  --request POST --data '{"username": "<username@vsphere.local>", "password": "<password>"}'  https://<hcx_manager_fqdn>/hybridity/api/sessions --insecure
