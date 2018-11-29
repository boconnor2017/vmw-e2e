# API Reference
If an E2E solution requires access to an API, the API commands can be found in the folders in this directory. 

## Steps to setup HCX API
TBD

## Steps to setup PKS API
Navigate to PKS directory
```
root@photon-machine [ /usr/local ]# cd vmw-e2e/api/PKS/
```

Install **unzip**
```
root@photon-machine [ /usr/local/vmw-e2e/api/PKS ]# yum install unzip
```

Unzip **pks.zip**
```
root@photon-machine [ /usr/local/vmw-e2e/api/PKS ]# unzip pks.zip
```

Navigate to unzipped pks directory
```
root@photon-machine [ /usr/local/vmw-e2e/api/PKS ]# cd pks/
```

Run the following commands
```
root@photon-machine [ /usr/local/vmw-e2e/api/PKS/pks ]# chmod 755 vke
root@photon-machine [ /usr/local/vmw-e2e/api/PKS/pks ]# chmod 755 kubectl
```

Test that the CLI commands work
```
root@photon-machine [ /usr/local/vmw-e2e/api/PKS/pks ]# ./vke -version
vke version 0.9.1 (Build: 99-bbf21cd)
root@photon-machine [ /usr/local/vmw-e2e/api/PKS/pks ]# ./kubectl version
Client Version: version.Info{Major:"1", Minor:"10", GitVersion:"v1.10.8", GitCommit:"7eab6a49736cc7b01869a15f9f05dc5b49efb9fc", GitTreeState:"clean", BuildDate:"2018-09-14T16:06:30Z", GoVersion:"go1.9.3", Compiler:"gc", Platform:"linux/amd64"}
```
