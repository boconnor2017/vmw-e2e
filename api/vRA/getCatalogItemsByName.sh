curl --insecure -X GET --header 'Accept: text/html' -H "Authorization: Bearer $token" 'https://<vra-fqdn>/catalog-service/api/catalogItems' >> catalog-items.json
cat catalog-items.json | jq '.content[].name'
rm catalog-items.json
