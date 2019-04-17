curl --insecure -X GET --header 'Accept: text/html' -H "Authorization: Bearer $token" 'https://<vra-fqdn>/content-management-service/api/contents' >> content-list.json
cat content.json | jq '.content[] | "\(.id) \(.name)"'
rm content-list.json
