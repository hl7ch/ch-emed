Profile: CHEMEDMedicationAdministrationList
Parent: CHEMEDMedicationAdministration
Id: ch-emed-medicationadministration-list
Title: "CH EMED MedicationAdministration (LIST)"
Description: "Definition of the medication administration for the medication list document"
* . ^short = "CH EMED MedicationAdministration (LIST)"
* extension contains
    CHEMEDExtDispense named parentDocument 0..1 and
    Author named authorDocument 0..1
* extension[parentDocument] ^short = "Reference to the parent document"
* extension[authorDocument] ^short = "Author of the original document if different from the author of the medical decision (MedicationAdministration.performer.actor), see also 'Guidance - Authorship'"
