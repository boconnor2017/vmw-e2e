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
var category = new com_vmware_cis_tagging_category(client);
var tag = new com_vmware_cis_tagging_tag(client);
var categoryID = category.list();
var tagID = tag.list();

System.log("*** CATEGORIES ***");
for (var i in categoryID)
{
  System.log("Category ID: "+categoryID[i]+" "+"Name: "+category.get(categoryID[i]).name);
}

System.log("*** TAGS ***");
for (var i in tagID)
{
  System.log("Tag ID: "+tagID[i]+" "+"Name: "+tag.get(tagID[i]).name);
}
