curl --insecure -X POST --header 'Content-Type: application/json' --header 'Accept: application/json' --header 'vmware-use-header-authn: csxlab' --header 'vmware-api-session-id: null' -u 'administrator@vsphere.local:VMware1!' 'https://<vcenter-fqdn>/rest/com/vmware/cis/session' >> vcenter-session-id.json
cat vcenter-session-id.json | jq '.'
rm vcenter-session-id.json
echo "Please run export vcentersessionid=<session id>"
