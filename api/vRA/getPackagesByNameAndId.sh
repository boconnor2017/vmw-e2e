curl --insecure -X GET --header 'Accept: text/html' -H "Authorization: Bearer $token" 'https://<vra-fqdn>/content-management-service/api/packages' >> package-list.json
cat packages.json | jq '.content[] | "\(.id) \(.name)"'
rm package-list.json
