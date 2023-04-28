Profile: CHEMEDPractitionerRole
Parent: CHCorePractitionerRoleEpr
Id: ch-emed-practitionerrole
Title: "CH EMED PractitionerRole"
Description: "Definition of the practitioner role for the eMedication context"

* . ^short = "CH EMED PractitionerRole"
* practitioner 1..
* practitioner only Reference(CHEMEDPractitioner)
* practitioner.reference 1..
* organization 1..
* organization only Reference(CHEMEDOrganization)
* organization.reference 1..