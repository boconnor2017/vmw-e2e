curl --insecure -X GET --header 'Accept: text/html' -H "Authorization: Bearer $token" 'https://<vra-fqdn>/content-management-service/api/packages/<package id>/contents' >> package-content.json
cat package-content.json | jq '.content[]'
rm package-content.json
