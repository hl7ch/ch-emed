Profile: CHEMEDMedicationRequestChangedList
Parent: CHEMEDMedicationRequestChanged
Id: ch-emed-medicationrequest-changed-list
Title: "CH EMED MedicationRequest Changed (LIST)"
Description: "Definition of the changed medication request for the medication list document"
* . ^short = "CH EMED MedicationRequest Changed (LIST)"
* extension contains
    CHEMEDExtPharmaceuticalAdvice named parentDocument 0..1 and
    Author named authorDocument 0..1
* extension[parentDocument] ^short = "Reference to the parent document"
* extension[authorDocument] ^short = "Author of the original document if different from the author of the medical decision, see also 'Guidance - Authorship'"
