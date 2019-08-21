<#

Version: 1.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: August 2019
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: run this script against a DNS server to automatically create necessary
            DNS entries for VMWare Cloud Foundation

MANAGEMENT WORKLOAD DOMAIN SAMPLE DNS ENTRIES
sfo01m01sddcmgr	sfo01.rainpole.local	172.16.11.60	SDDC Manager
sfo01m01psc01	sfo01.rainpole.local	172.16.11.61	Platform Services Controller 01
sfo01m02psc02	sfo01.rainpole.local	172.16.11.63	Platform Services Controller 02
sfo01m01vc01	sfo01.rainpole.local	172.16.11.63	vCenter Server
sfo01m01esx01	sfo01.rainpole.local	172.16.11.101	ESXi host 01
sfo01m01esx02	sfo01.rainpole.local	172.16.11.102	ESXi host 02
sfo01m01esx03	sfo01.rainpole.local	172.16.11.103	ESXi host 03
sfo01m01esx04	sfo01.rainpole.local	172.16.11.104	ESXi host 04
sfo01m01nsx01	sfo01.rainpole.local	172.16.11.64	NSX-V Manager
sfo01m01nsxc01							        172.16.11.65	NSX-V Controller 01
sfo01m01nsxc02							        172.16.11.66	NSX-V Controller 02
sfo01m01nsxc03							        172.16.11.67	NSX-V Controller 03
sfo01w01vc01	sfo01.rainpole.local	172.16.11.68	Additional vCenter Server for VI Workload #1
sfo01w01nsx01	sfo01.rainpole.local	172.16.11.69	Additional NSX-V Manager for VI Workload #1
sfo01w02vc01	sfo01.rainpole.local	172.16.11.70	Additional vCenter Server for VI Workload #2
sfo01w02nsx01	sfo01.rainpole.local	172.16.11.71	NSX-T Manager for Workload #2
sfo01w02nsxc01							        172.16.11.120	NSX-T Controller 01 for Workload #2
sfo01w02nsxc02							        172.16.11.121	NSX-T Controller 02 for Workload #2
sfo01w02nsxc03							        172.16.11.122	NSX-T Controller 03 for Workload #2

#>
Add-DnsServerResourceRecordA -Name "sfo01m01sddcmgr" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.60"


# TO BE CONTINUED... WORK IN PROGRESS
