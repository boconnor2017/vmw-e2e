/*
Version: 1.1
Author: Brendan O'Connor (VMWare Professional Services)
Date: February 2019
Disclaimer: this solution is not a validated or copywrite solution from VMWare.
            This solution is an open source tool for E2E participants to
            utilize at their discression. You may copy, edit, and redistribute
            this solution as you like.
How to use: leverage the documented process in the E2E AMI-Style Blueprinting.
*/

//Retrieve AMI selection
System.log("User: "+user+" has selected the following AMI: "+nameOfAMI);

//Retrieve the key value pairs from ResourceElement
contentMime = e2eKeyValueResElem.getContentAsMimeAttachment();
contentText = contentMime.content
System.log("Parsing Resource Element Content: ");

//Parse content into an array
lineByLine = contentText.split(/\r\n|\r|\n/); 
lineByLine.sort();

for (i=0; i<lineByLine.length;i++)
{
   System.log("  -- Line "+i+": "+lineByLine[i]);
   var parseval = lineByLine[i].split(", ");
   if(parseval[0]==nameOfAMI)
   {
       System.log("*** MATCH FOUND ******************************************************************");
       System.log("      -- AMI Name: "+parseval[0]);
       System.log("      -- AMI URL: "+parseval[1]);
       System.log("**********************************************************************************");
       amiurl=parseval[1];
   }
}

// Pass URL to vRA Catalog Item
System.log("Passing AMI URL to vRA for provisioning");
System.log("AMI URL: "+amiurl);

inputs = [];
prop = new Properties();
prop.put("name", "ovf_url");
prop.put("value", amiurl);
inputs.push(prop);
System.log("Inputs populated");
System.log("Customizing Provisioning Request");
var provisioningRequest = vCACCAFERequestsHelper.getProvisioningRequestForCatalogItem(item);
provisioningRequest.setDescription("E2E AMI-Style Blueprinting");
provisioningRequest.setReasons("Provisioning OVA from "+amiurl);
provisioningRequest.setRequestedFor(user);

// Customize request data
var jsonData = vCACCAFERequestsHelper.getProvisioningRequestData(provisioningRequest);
System.log("JSON: \r\n" + jsonData);
var json = JSON.parse(jsonData);
for each(var k in Object.keys(json)){
	if(k=="OVA"){
		System.log("Customize component " + k + " in request");
		for (var i=0; i < inputs.length; i++){
		    System.log("#### Replacing "+json[k].data[inputs[i].name]+" with "+inputs[i].value);
			json[k].data[inputs[i].name] = "" + inputs[i].value;
			System.log("#### New "+json[k].data[inputs[i].name]);
		}
	}
}

// Provision request in vRA
newJsonData = JSON.stringify(json);
System.debug(newJsonData);
vCACCAFERequestsHelper.setProvisioningRequestData(provisioningRequest, newJsonData);

currentRequest = System.getModule("com.vmware.library.vcaccafe.request").requestCatalogItemWithProvisioningRequest(item, provisioningRequest);
