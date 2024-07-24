Profile: CHEMEDMedicationStatementChangedList
Parent: CHEMEDMedicationStatementChanged
Id: ch-emed-medicationstatement-changed-list
Title: "CH EMED MedicationStatement Changed (LIST)"
Description: "Definition of the changed medication statement for the medication list document"
* . ^short = "CH EMED MedicationStatement Changed (LIST)"
* extension contains
    CHEMEDExtPharmaceuticalAdvice named parentDocument 0..1 and
    Author named authorDocument 0..1
* extension[parentDocument] ^short = "Reference to the parent document"
* extension[authorDocument] ^short = "Author of the original document if different from the author of the medical decision, see also 'Guidance - Authorship'"
