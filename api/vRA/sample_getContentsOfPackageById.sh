curl --insecure -X GET --header 'Accept: text/html' -H "Authorization: Bearer $token" 'https://<vra-fqdn>/content-management-service/api/packages/b23c63fd-623c-496b-8f83-277b0c7026d1/contents' >> package-content.json
cat package-content.json | jq '.content[]'
rm package-content.json
