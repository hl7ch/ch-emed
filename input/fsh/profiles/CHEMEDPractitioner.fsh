Profile: CHEMEDPractitioner
Parent: CHCorePractitionerEPR
Id: ch-emed-practitioner
Title: "CH EMED Practitioner"
Description: "Definition of the practitioner for the eMedication context"

* . ^short = "CH EMED Practitioner"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier[GLN] MS
* name MS