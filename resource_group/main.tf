# PPP-LLL-EEE-SSSSS-RRRRR-ARN-NNNN
/*
porfolio_name

PPP
Portfolio Name Portfolio Code (PPP)
Foods FOD

*/

/*
location

LLL
Region Location LLL
North Europe Ireland EUN
West Europe Netherlands EUW
*/

/*
environment

EEE
Environment Up to 4 Character codes Heritage Mapping Notes
Production Prod N/A Used for production grade environments only and domain prefix NOT exposed outside of perimeter internet domain names.
Development Dev DEV Used for development subscriptions
*/

/*
service

SSSSS
Service Description Up to 6 character codes
Prometheus prom
Grafana graf

*/

/*
role

RRRRR
Role Up to 6 character code
Web only role service web
Application based processed app
*/

/*
arn

ARN
Entity Scope Length Casing Valid characters ARN Example
Availability
Set Resource Group 1-80 Case in sensitive Alphanumeric, underscore, and hyphen avs

Storage
account
(data) Global 3-24 Lowercase Alphanumeric sta

Storage
account
(disks) Global 3-24 Lowercase Alphanumeric stdk
*/

/*
nnnn

NNNN
Number Description 4 character code
Standard component increment 0001-9999
*/

resource "azurerm_resource_group" "main" {
  name     = "${var.porfolio_name}_${lower(var.resource_group_name)}_${var.resource_group_environment}"
  location = "${var.resource_group_location}"

  tags = {
    environment = "${var.resource_group_environment}"
  }
}
