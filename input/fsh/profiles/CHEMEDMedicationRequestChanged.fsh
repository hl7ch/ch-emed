Profile: CHEMEDMedicationRequestChanged
Parent: CHEMEDMedicationRequest
Id: ch-emed-medicationrequest-changed
Title: "CH EMED MedicationRequest Changed"
Description: "Definition of the changed medication request for the pharmaceutical advice document"

* . ^short = "CH EMED MedicationRequest Changed (PADV)"
* supportingInformation ^slicing.discriminator.type = #profile
* supportingInformation ^slicing.discriminator.path = "resolve()"
* supportingInformation ^slicing.rules = #open
* supportingInformation contains partOf 1..1
* supportingInformation[partOf] only Reference(CHEMEDObservation)
* supportingInformation[partOf] ^short = "Reference to the Observation from type 'CHANGE'"
* supportingInformation[partOf] ^type.aggregation[0] = #referenced
* supportingInformation[partOf] ^type.aggregation[+] = #bundled