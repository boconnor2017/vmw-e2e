# Created by VMWare Professional Services
# Author: Brendan O'Connor
#
# INSTRUCTIONS:
#  1. Edit the <username@vsphere.local> <password> and <hcx_manager_fqdn> parameters below
#  2. The response will provide a parameter called x-hm-authorization. This is the Authorization token for subsequent API calls.
curl -i  -H "Accept: application/json" -H "Content-Type: application/json"  --request POST --data '{"username": "<username@vsphere.local>", "password": "<password>"}'  https://<hcx_manager_fqdn>/hybridity/api/sessions --insecure
