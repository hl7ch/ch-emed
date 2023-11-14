Profile: CHEMEDMedicationRequestList
Parent: CHEMEDMedicationRequest
Id: ch-emed-medicationrequest-list
Title: "CH EMED MedicationRequest (LIST)"
Description: "Definition of the medication request for the medication list document"
* . ^short = "CH EMED MedicationRequest (LIST)"
* extension contains
    CHEMEDExtPrescription named parentDocument 0..1 and
    Author named authorDocument 0..1
* extension[parentDocument] ^short = "Reference to the parent document"
* extension[authorDocument] ^short = "Author of the original document if different from the author of the medical decision (MedicationRequest.requester), see also 'Guidance - Authorship'"
