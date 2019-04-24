curl --insecure -X GET --header 'Accept: application/json' --header "vmware-api-session-id: $vcentersessionid" 'https://<vcenter-fqdn>/rest/vcenter/datacenter' >> vcenter-datacenter-list.json
cat vcenter-datacenter-list.json | jq '.'
rm vcenter-datacenter-list.json
