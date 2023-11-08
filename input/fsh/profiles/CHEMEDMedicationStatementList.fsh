Profile: CHEMEDMedicationStatementList
Parent: CHEMEDMedicationStatement
Id: ch-emed-medicationstatement-list
Title: "CH EMED MedicationStatement (LIST)"
Description: "Definition of the medication statement for the medication list document"

* . ^short = "CH EMED MedicationStatement (LIST)"
* extension contains
    CHEMEDExtTreatmentPlan named parentDocument 0..1 and
    Author named authorDocument 0..1
* extension[parentDocument] ^short = "Reference to the parent document"
* extension[authorDocument] ^short = "Author of the original document if different from the author of the medical decision (MedicationStatement.informationSource), see also 'Guidance - Different Authors'"
