echo Generating Token
curl --insecure -H "Accept: application/json" -H 'Content-Type: application/json' --data '{"username":"vraadmin@vsphere.local","password":"VMware1!","tenant":"vsphere.local"}' https://vrlcmvraa05.cloudstackx.local/identity/api/tokens >> token.json
cat token.json | jq '.id'
rm token.json
echo "Please run export token=<token value>"
