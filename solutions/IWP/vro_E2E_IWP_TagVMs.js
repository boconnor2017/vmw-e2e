/*
Version: 1.0
Author: Brendan O'Connor (VMWare Professional Services)
Date: December 2018
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: leverage the documented process in the E2E Intelligent Workload Placement.
*/

//Parse vRA schema properties
var requestID = properties.get("requestID");
System.log("Request ID: "+requestID);
var machine = properties.get("machine");
var machine_id = machine.get("id");
System.log("Machine ID: "+machine_id);
var machine_name = machine.get("name");
System.log("Machine Name: "+machine_name);
var machine_type = machine.get("type");
System.log("Machine Type: "+machine_type);
var machine_owner = machine.get("owner");
System.log("Machine Owner: "+machine_owner);
var request_event = properties.get("virtualMachineEvent");
System.log("Event: "+request_event);
var request_lifecycle = properties.get("lifecycleState");
var request_lifecycle_event = request_lifecycle.get("event");
System.log("Lifecycle Event: "+request_lifecycle_event);
var request_lifecycle_phase = request_lifecycle.get("phase");
System.log("Lifecycle Phase: "+request_lifecycle_phase);
var request_lifecycle_state = request_lifecycle.get("state");
System.log("Lifecycle State: "+request_lifecycle_state);
var component_id = properties.get("componentId");
System.log("Component ID: "+component_id);
var blueprint_name = properties.get("blueprintName");
System.log("Blueprint Name: "+blueprint_name);
var component_type_id = properties.get("componentTypeId");
System.log("Component Type ID: "+component_type_id);
var endpoint_id = properties.get("endpointId");
System.log("Endpoint ID: "+endpoint_id);

//Parse custom properties to pull the tags
var machine_custom_properties = machine.get("properties");
if(machine_custom_properties!=null)
{
  for (var i=0; i < machine_custom_properties.length; i++)
  {
   System.log("Key: "+machine_custom_properties[i].get("key"));
   System.log("Value: "+machine_custom_properties[i].get("value"));
   System.log("Test: "+machine_custom_properties[i].get(machine_custom_properties[i].get("key")));
  }
}
else
{
 System.log("No custom properties");
}
