/*
Version: 1.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: October 2018
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: leverage the documented process in the E2E Intelligent Workload Placement.
*/

if (endpoint == null) {  
  throw "'endpoint' parameter should not be null";  
}  
  
var client = endpoint.client();  
var vmid;  
  // Find VM by name using vAPI; you can find it also by other properties  
  var vmsvc = new com_vmware_vcenter_VM(client);  
  var spec = new com_vmware_vcenter_VM_filter__spec();  
  spec.names = [vm_name];   
  var found = vmsvc.list(spec);  
  if (found == null || found.length == 0) {  
    throw "No VM found";  
  }  
  if (found.length > 1) {  
    System.log("Multiple VMs found; will use the first one");  
  }  
  vmid = found[0].vm;  
  
// Attach the tag  
var tagsvc = new com_vmware_cis_tagging_tag__association(client);  
var tagid = tag_id;   
var dynid = new com_vmware_vapi_std_dynamic__ID();  
dynid.id = vmid;  
dynid.type = "VirtualMachine";  
tagsvc.attach(tagid, dynid);
