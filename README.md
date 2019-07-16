![E2E](./img/E2E_Logo_github.png)

# About Project E2E
See the [Wiki Page](https://github.com/boconnor2017/vmw-e2e/wiki) for details about Project E2E.

# Getting Started
Deploy [PhotonOS](https://vmware.github.io/photon/) to your laptop using [Fusion](https://www.vmware.com/products/fusion.html) or [Workstation](https://www.vmware.com/products/workstation-pro.html). PhotonOS can also be deployed to vSphere, AWS, Google GCE, Azure or Rasberry Pi3. 

Open a PuTTY session and connect to your PhotonOS VM. Navigate to `/usr/local/` directory:
```
root@photon-machine [ ~ ]# cd /usr/local/
```

Install `jq` (used for parsing JSON)
```
root@photon-machine [ /usr/local ]# yum install jq
```

Install `git`
```
root@photon-machine [ /usr/local ]# yum install git
```

Clone this repository:
```
root@photon-machine [ /usr/local ]# git clone https://github.com/boconnor2017/vmw-e2e.git
```

Navigate to the `/vmw-e2e` directory
```
root@photon-machine [ /usr/local ]# cd vmw-e2e/
```

Start Docker
```
root@photon-machine [ /usr/local/vmw-e2e ]# systemctl start docker
```

# Next Steps:
Follow a process in one of the E2E solutions on the wiki page. For a list of available E2E Solutions [click here](https://github.com/boconnor2017/vmw-e2e/wiki/Part-1:-the-List-of-E2E-Solutions). For API references [click here](https://github.com/boconnor2017/vmw-e2e/wiki/Part-2:-API-References).

# Prerequisites
This repository contains source code and procedures to implement all E2E Solutions. Before implementing an E2E Solution, its important to have a target platform. For a list of suggested platforms to deploy E2E Solutions to, [click here](https://github.com/boconnor2017/vmw-e2e/wiki/Part-3:-Where-to-Implement-E2E-Solutions).
