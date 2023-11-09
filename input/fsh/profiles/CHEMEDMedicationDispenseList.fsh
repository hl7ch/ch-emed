Profile: CHEMEDMedicationDispenseList
Parent: CHEMEDMedicationDispense
Id: ch-emed-medicationdispense-list
Title: "CH EMED MedicationDispense (LIST)"
Description: "Definition of the medication dispense for the medication list document"
* . ^short = "CH EMED MedicationDispense (LIST)"
* extension contains
    CHEMEDExtDispense named parentDocument 0..1 and
    Author named authorDocument 0..1
* extension[parentDocument] ^short = "Reference to the parent document"
* extension[authorDocument] ^short = "Author of the original document if different from the author of the medical decision (MedicationDispense.performer.actor), see also 'Guidance - Authorship'"
