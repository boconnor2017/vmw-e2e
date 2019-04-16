echo Generating Token
curl --insecure -H "Accept: application/json" -H 'Content-Type: application/json' --data '{"username":"vraadmin@vsphere.local","password":"VMware1!","tenant":"vsphere.local"}' https://<vra-fqdn>/identity/api/tokens >> token.json
echo Populating token variable
export token=$(cat token.json | jq '.id' | tr -d \")
echo Validating token
curl --insecure -I -H "Accept: application/json" -H "Authorization: Bearer $token" -H "CacheControl: no-cache" "https://<vra-fqdn>/identity/api/tokens/$token"
rm token.json
