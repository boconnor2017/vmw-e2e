#
curl -i  -H "Accept: application/json" -H "Content-Type: application/json"  --request POST --data '{"username": "<username>", "password": "<password>"}'  https://<hcx_manager_fqdn>/hybridity/api/sessions --insecure
