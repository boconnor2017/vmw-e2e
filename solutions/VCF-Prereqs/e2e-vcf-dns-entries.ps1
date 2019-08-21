<#
Version: 1.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: August 2019

Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.

How to use: Edit the values and run this script against a DNS server to automatically create necessary
            DNS entries for VMWare Cloud Foundation. The values should be based on completed information
            in the CloudBuilder spreadsheet. 


MANAGEMENT WORKLOAD DOMAIN SAMPLE DNS ENTRIES (see VCF Documentation on my.vmware.com for details)
sfo01m01sddcmgr	sfo01.rainpole.local	172.16.11.60	SDDC Manager
sfo01m01psc01	sfo01.rainpole.local	172.16.11.61	Platform Services Controller 01
sfo01m02psc02	sfo01.rainpole.local	172.16.11.62	Platform Services Controller 02
sfo01m01vc01	sfo01.rainpole.local	172.16.11.63	vCenter Server
sfo01m01esx01	sfo01.rainpole.local	172.16.11.101	ESXi host 01
sfo01m01esx02	sfo01.rainpole.local	172.16.11.102	ESXi host 02
sfo01m01esx03	sfo01.rainpole.local	172.16.11.103	ESXi host 03
sfo01m01esx04	sfo01.rainpole.local	172.16.11.104	ESXi host 04
sfo01m01nsx01	sfo01.rainpole.local	172.16.11.64	NSX-V Manager

VI WORKLOAD DOMAIN #1 (repeat this section for any additional workload domains)
sfo01w01vc01	sfo01.rainpole.local	172.16.11.68	Additional vCenter Server for VI Workload Domain #1
sfo01w01nsx01	sfo01.rainpole.local	172.16.11.69	Additional NSX-V Manager for VI Workload Domain #1
sfo01w01esx01	sfo01.rainpole.local	172.16.17.101	ESXi host 05
sfo01w01esx02	sfo01.rainpole.local	172.16.17.102	ESXi host 06
sfo01w01esx03	sfo01.rainpole.local	172.16.17.103	ESXi host 07
sfo01w01esx04	sfo01.rainpole.local	172.16.17.104	ESXi host 08
#>


Add-DnsServerResourceRecordA -Name "sfo01m01sddcmgr" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.60"
Add-DnsServerResourceRecordA -Name "sfo01m01psc01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.61"
Add-DnsServerResourceRecordA -Name "sfo01m02psc02" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.62"
Add-DnsServerResourceRecordA -Name "sfo01m01vc01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.63"
Add-DnsServerResourceRecordA -Name "sfo01m01esx01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.101"
Add-DnsServerResourceRecordA -Name "sfo01m01esx02" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.102"
Add-DnsServerResourceRecordA -Name "sfo01m01esx03" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.103"
Add-DnsServerResourceRecordA -Name "sfo01m01esx04" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.104"
Add-DnsServerResourceRecordA -Name "sfo01m01nsx01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.64"
Add-DnsServerResourceRecordA -Name "sfo01w01vc01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.68"
Add-DnsServerResourceRecordA -Name "sfo01w01nsx01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.69"

Add-DnsServerResourceRecordA -Name "sfo01w01esx01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.101"
Add-DnsServerResourceRecordA -Name "sfo01w01esx01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.102"
Add-DnsServerResourceRecordA -Name "sfo01w01esx01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.103"
Add-DnsServerResourceRecordA -Name "sfo01w01esx01" -ZoneName "sfo01.rainpole.local" -AllowUpdateAny -CreatePtr -IPv4Address "172.16.11.104"
