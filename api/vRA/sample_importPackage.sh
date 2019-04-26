curl --insecure -s -H "Content-Type: multipart/form-data" -H "Authorization: Bearer $token" https://<vra-fqdn>/content-management-service/api/packages -F "file=@IaCv1.zip"
