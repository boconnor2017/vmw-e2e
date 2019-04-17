# vRealize Automation API Reference
The vRA API Reference Documentation is natively embedded in the vRA Appliance. To access this:
```
https://<vRA-Appliance>/component-registry/services/docs
```

# Getting started
Use the following curl command to generate a token
```
curl --insecure -H "Accept: application/json" -H 'Content-Type: application/json' --data '{"username":"tenantadmin@vsphere.local","password":"VMWare1!","tenant":"vsphere.local"}' https://<vRA-appliance-fqdn>/identity/api/tokens
```

Should return something that looks like the following:
```
{"expires":"2019-03-13T23:37:12.000Z","id":"MTU1MjQ5MTQzMjY3MToyOGJlMThiODRmYzgyM2Y0YzZlMzp0ZW5hbnQ6dnNwaGVyZS5sb2NhbHVzZXJuYW1lOnZyYWFkbWluQHZzcGhlcmUubG9jYWxleHBpcmF0aW9uOjE1NTI1MjAyMzIwMDA6MGNiOTY2Nzg1M2IzY2UwNjg2ZjQ2MGZkY2E4MmI3Yzk1MDVjOWRjYWQ1ODVmNTQwYjY0OTJhMDQ1OGFjYmJmY2ZlYjVjMGM3N2U0NTVjYjg1ZGZkZGIxZTM4ZjdjY2M3YjE2ZDcyNGJlZjM1MjQwYWU3NTdmZTM5MTgwZjcxMzY=","tenant":"vsphere.local"}
```

Save the token for future use
```
export token="<token-id-value>"
```

Use the following curl command to validate the token
```
curl --insecure -I -H "Accept: application/json" -H "Authorization: Bearer $token" -H "CacheControl: no-cache" "https://<vra-appliance-fqdn>/identity/api/tokens/$token"
```

Should return 204 if successful
```
HTTP/1.1 204
Cache-Control: no-cache, no-store, max-age=0, must-revalidate
Pragma: no-cache
Expires: 0
Strict-Transport-Security: max-age=31536000 ; includeSubDomains
X-XSS-Protection: 1; mode=block
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
Content-Type: application/json;charset=UTF-8
Date: Wed, 13 Mar 2019 15:41:33 GMT
X-Frame-Options: SAMEORIGIN
```

Change permissions of the sh scripts
```
chmod 755 *.sh
```

Validate file permissions by running `ls -l`
```
-rwxr-xr-x 1 root root  237 Apr 17 12:22 createPackageById.sh
-rwxr-xr-x 1 root root  580 Apr 17 10:13 full-token-refresh.sh
-rwxr-xr-x 1 root root  249 Apr 17 10:34 getCatalogItemsByName.sh
-rwxr-xr-x 1 root root  263 Apr 17 10:32 getContentByNameAndId.sh
-rwxr-xr-x 1 root root  253 Apr 17 10:18 getContentByName.sh
-rwxr-xr-x 1 root root  248 Apr 17 11:04 getPackages.sh
```
